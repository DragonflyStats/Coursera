library(shiny)

library(tidyverse)
library(magrittr)

dat<-read_csv(url("https://www.dropbox.com/s/uhfstf6g36ghxwp/cces_sample_coursera.csv?raw=1"))
dat<- dat %>% select(c("pid7","ideo5"))
dat<-drop_na(dat)


# Define UI for application that draws a histogram
ui <- fluidPage(
    br(),

            sliderInput("bins",
                        "Select Five Point Ideology (1=Very liberal, 5=Very conservative)",
                        min = 1,
                        max = 5,
                        value = 3),
br(),
           plotOutput("SurveyPlot")
 
    
)


server <- function(input, output) {

    ideology <- reactive({input$bins})
 
    output$SurveyPlot <-  renderPlot({
        dat %>% filter(ideo5==ideology()) %>%
        ggplot(aes(x=pid7,fill=pid7)) +
        geom_bar(show.legend = FALSE) + 
        xlab("7 Point Party ID, 1 = Very D, 7 = Very R") +
        ylab("Count") +
            scale_y_continuous(breaks=seq(0, 125, 25),limits = c(0,125))
    })
    
       
}

# Run the application 
shinyApp(ui = ui, server = server)
