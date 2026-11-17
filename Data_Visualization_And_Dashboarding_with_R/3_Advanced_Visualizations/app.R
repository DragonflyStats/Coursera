
library(shiny)

Region_List = as.character(1:4)
# Define UI for application that draws a histogram
ui <- navbarPage("My Application",
                 tabPanel("Page 1",

           
                            
                            sidebarPanel(
                              sliderInput("bins1",
                                          "Number of bins:",
                                          min = 1,
                                          max = 30,
                                          value = 20)),
            
                             mainPanel(tabsetPanel(
                                tabPanel("Tab1", plotOutput("plot1a")), 
                                tabPanel("Tab2", plotOutput("plot1b"))
                              )
                                                      )),
                 tabPanel("Page 2",
                          sidebarPanel(
                            radioButtons("Sex", "Distribution type:",
                                         c("Normal" = "norm",
                                           "Exponential" = "exp")),
                            sliderInput("bins2",
                                        "Number of bins:",
                                        min = 1,
                                        max = 5,
                                        value = 3)),
                          
                          mainPanel("PLOT2",plotOutput("plot2"))
                          ),
                 tabPanel("Page 3",
                          sidebarPanel(sliderInput("bins3",
                                      "Number of bins:",
                                      min = 1,
                                      max = 50,
                                      value = 30),                 
                                      selectInput("Scenario_Compare_2", 
                                      
                                      label = "Select Region", 
                                       
                                      choices = Region_List,
                                      textOutput("Scenario_Compare_2"),
                                      multiple = TRUE
                                                                                
                                      ),),
                          
                          mainPanel("PLOT3",plotOutput("plot3")))



)

# Define server logic required to draw a histogram
server <- function(input, output) {

  
  
  output$plot1a<- renderPlot({
    
    x    <- iris[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins1 + 1)
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
  
  output$plot1b<- renderPlot({
x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins1 + 1)
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
    
    output$plot2<- renderPlot({

      x    <- faithful[, 2]
      bins <- seq(min(x), max(x), length.out = input$bins2 + 1)

      hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
    
    output$plot3 <- renderPlot({

      x    <- faithful[, 2]
      bins <- seq(min(x), max(x), length.out = input$bins3 + 1)   
      hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
