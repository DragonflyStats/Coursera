library(shiny)
library(data.table)

# Load pre-computed 1-to-4-gram lookup tables (~24 MB)
model_tables <- readRDS("ngram_model_tables.rds")

# Backoff prediction function (4-gram -> 3-gram -> 2-gram -> 1-gram)
predict_next_word <- function(input_text, tables, top_k = 3) {
  if (is.null(input_text) || trimws(input_text) == "") {
    return(tables$ng1$feature[1:top_k])
  }
  
  # Normalize apostrophes and strip non-alphabetic noise
  clean_in <- chartr("\u2018\u2019", "''", input_text)
  clean_in <- tolower(gsub("[^a-zA-Z' ]", "", clean_in))
  words <- unlist(strsplit(trimws(clean_in), "\\s+"))
  words <- words[words != ""]
  
  n <- length(words)
  preds <- character(0)
  
  # 1. Check 4-gram table (last 3 words)
  if (n >= 3) {
    h3 <- paste(tail(words, 3), collapse = " ")
    preds <- c(preds, tables$ng4[.(h3), target, nomatch = NULL])
  }
  # 2. Backoff to 3-gram table (last 2 words)
  if (length(preds) < top_k && n >= 2) {
    h2 <- paste(tail(words, 2), collapse = " ")
    preds <- unique(c(preds, tables$ng3[.(h2), target, nomatch = NULL]))
  }
  # 3. Backoff to 2-gram table (last 1 word)
  if (length(preds) < top_k && n >= 1) {
    h1 <- tail(words, 1)
    preds <- unique(c(preds, tables$ng2[.(h1), target, nomatch = NULL]))
  }
  # 4. Fallback to top unigrams
  if (length(preds) < top_k) {
    preds <- unique(c(preds, tables$ng1$feature))
  }
  
  return(head(preds, top_k))
}

# UI Definition
ui <- fluidPage(
  theme = bslib::bs_theme(bootswatch = "flatly"),
  titlePanel("SmartType: Next-Word Predictive Text Engine"),
  
  tabsetPanel(
    tabPanel(
      "Predictor App",
      br(),
      sidebarLayout(
        sidebarPanel(
          h4("Instructions"),
          p("1. Type a phrase into the text box on the right."),
          p("2. The top predicted next word and two alternatives appear automatically."),
          p("3. Click any predicted word button to append it to your sentence."),
          hr(),
          actionButton("clear_btn", "Clear Text", class = "btn-outline-secondary btn-sm")
        ),
        mainPanel(
          textInput(
            "user_phrase",
            label = "Enter your phrase:",
            value = "I would like to",
            width = "100%",
            placeholder = "Start typing here..."
          ),
          br(),
          wellPanel(
            h5("Top Next-Word Prediction:"),
            h2(textOutput("top_word"), style = "color: #2b5c8f; font-weight: bold;"),
            hr(),
            h6("Click to auto-complete:"),
            uiOutput("suggestion_buttons")
          )
        )
      )
    ),
    tabPanel(
      "How It Works",
      br(),
      h4("Algorithm & Architecture"),
      p("This application uses a Stupid Backoff N-Gram language model trained on over 4.2 million lines of US English text from blogs, news articles, and Twitter."),
      tags$ul(
        tags$li(tags$strong("Indexed Lookup Tables:"), " Stores the top-ranked continuations for 1-gram through 4-gram contexts using keyed data.table structures for sub-10ms response times."),
        tags$li(tags$strong("Memory Optimization:"), " Single-occurrence n-grams and profane terms are pruned during training, keeping the model footprint at ~24 MB."),
        tags$li(tags$strong("Graceful Fallback:"), " Automatically steps down from 4-gram to 3-gram, 2-gram, and 1-gram tables so a prediction is always returned even for unseen phrases.")
      )
    )
  )
)

# Server Logic
server <- function(input, output, session) {
  predictions <- reactive({
    predict_next_word(input$user_phrase, model_tables, top_k = 3)
  })
  
  output$top_word <- renderText({
    predictions()[1]
  })
  
  output$suggestion_buttons <- renderUI({
    preds <- predictions()
    tagList(
      actionButton("btn1", preds[1], class = "btn-primary", style = "margin-right: 8px;"),
      actionButton("btn2", preds[2], class = "btn-outline-primary", style = "margin-right: 8px;"),
      actionButton("btn3", preds[3], class = "btn-outline-primary")
    )
  })
  
  append_word <- function(word) {
    current <- trimws(input$user_phrase)
    updated <- ifelse(current == "", word, paste(current, word))
    updateTextInput(session, "user_phrase", value = updated)
  }
  
  observeEvent(input$btn1, { append_word(predictions()[1]) })
  observeEvent(input$btn2, { append_word(predictions()[2]) })
  observeEvent(input$btn3, { append_word(predictions()[3]) })
  observeEvent(input$clear_btn, { updateTextInput(session, "user_phrase", value = "") })
}

shinyApp(ui = ui, server = server)