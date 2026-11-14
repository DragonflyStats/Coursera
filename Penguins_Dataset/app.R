library(shiny)
library(palmerpenguins)
library(ggplot2)
library(dplyr)

# Load and clean penguins dataset
data("penguins")
penguins_clean <- na.omit(penguins)

# Fit linear regression model
fit <- lm(body_mass_g ~ species + flipper_length_mm + bill_length_mm, data = penguins_clean)

ui <- fluidPage(
  # Set light blue background color for the app
  tags$head(
    tags$style(HTML("
      body {
        background-color: #eef6fc;
      }
      .well {
        background-color: #ffffff;
      }
    "))
  ),
  
  titlePanel("Palmer Penguins Body Mass Predictor"),
  
  sidebarLayout(
    sidebarPanel(
      h3("Input Penguin Characteristics"),
      
      selectInput("species", "Penguin Species:", 
                  choices = unique(penguins_clean$species), 
                  selected = "Adelie"),
      
      sliderInput("flipper_length", "Flipper Length (mm):", 
                  min = min(penguins_clean$flipper_length_mm), 
                  max = max(penguins_clean$flipper_length_mm), 
                  value = 200, step = 1),
      
      sliderInput("bill_length", "Bill Length (mm):", 
                  min = min(penguins_clean$bill_length_mm), 
                  max = max(penguins_clean$bill_length_mm), 
                  value = 45, step = 0.5),
      
      submitButton("Predict Body Mass")
    ),
    
    mainPanel(
      tabsetPanel(
        type = "tabs",
        tabPanel("Prediction & Visualization", 
                 h4("Estimated Penguin Body Mass (grams):"),
                 verbatimTextOutput("pred_mass"),
                 hr(),
                 plotOutput("massPlot")),
        
        tabPanel("Documentation", 
                 h4("Application Documentation"),
                 p("This application predicts the body mass (in grams) of adult penguins observed in the Palmer Archipelago, Antarctica, using physical characteristics."),
                 h5("How to Use:"),
                 tags$ol(
                   tags$li("Select the penguin species (Adelie, Chinstrap, or Gentoo) from the drop-down menu."),
                   tags$li("Use the sliders to select flipper length (mm) and bill length (mm)."),
                   tags$li("Click the 'Predict Body Mass' button to process calculations."),
                   tags$li("The prediction box will display estimated weight, and the interactive plot highlights your selected data point relative to observed dataset trends.")
                 ))
      )
    )
  )
)

server <- function(input, output) {
  
  # Reactive prediction
  pred <- reactive({
    newdata <- data.frame(
      species = factor(input$species, levels = levels(penguins_clean$species)),
      flipper_length_mm = input$flipper_length,
      bill_length_mm = input$bill_length
    )
    predict(fit, newdata = newdata)
  })
  
  # Render prediction output
  output$pred_mass <- renderText({
    paste0(round(pred(), 1), " grams (", round(pred() / 1000, 2), " kg)")
  })
  
  # Render interactive plot
  output$massPlot <- renderPlot({
    pred_val <- pred()
    pred_df <- data.frame(
      flipper_length_mm = input$flipper_length,
      body_mass_g = pred_val
    )
    
    ggplot(penguins_clean, aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
      geom_point(alpha = 0.5, size = 2) +
      geom_point(data = pred_df, aes(x = flipper_length_mm, y = body_mass_g), 
                 color = "black", shape = 18, size = 6, inherit.aes = FALSE) +
      scale_color_manual(values = c("Adelie" = "darkorange", "Chinstrap" = "purple", "Gentoo" = "cyan4")) +
      labs(title = "Flipper Length vs Body Mass with User Prediction",
           x = "Flipper Length (mm)", 
           y = "Body Mass (g)",
           caption = "Black diamond represents your custom user prediction point.") +
      theme_minimal() +
      theme(
        panel.background = element_rect(fill = "white", color = NA),
        plot.background = element_rect(fill = "transparent", color = NA)
      )
  })
}

shinyApp(ui = ui, server = server)