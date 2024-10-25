library(conflicted)
library(data.table)
library(dplyr)
library(DT)
library(foreign)
library(ggplot2)
library(gt)
library(leaflet)
library(lubridate)
library(magrittr)
library(plotly)
library(reactable)
library(reactablefmtr)
library(scales)
library(sf)
library(shiny)
library(rmarkdown)
library(shinyauthr)
library(shinythemes)


load("Metadata.rdata")
load("storedobjects/version_info.rdata")

#### Objects for Part 1 Survey Data ####

load("storedobjects/survey_coverage.rdata")
load("storedobjects/surveyinfo.rdata")
load("storedobjects/estate_reports.rdata")
load("storedobjects/gt_reports.rdata")
#load("storedobjects/psm2i_contractors.rdata")

#### Objects for Part 2: Cutting Strategies ####

load("storedobjects/Standard_Cutting_Strategy.rdata")
load("storedobjects/CS02_Compare_Cutting_Strategy.rdata")



#####################################################################################
load("storedobjects/CS02CuttingStrategies.rdata")
load("storedobjects/SFCuttingStrategies.rdata")
load("storedobjects/CMCuttingStrategies.rdata")
load("storedobjects/DLSCuttingStrategies-UPDATED.rdata")
load("storedobjects/CMCuttingStrategies-UPDATED.rdata")
load("storedobjects/STICKS_YTGEN_INVOICE.rdata")

load("storedobjects/tree_height_prediction.rdata")

#####################################################################################

load("storedobjects/sticks_reports.rdata")
load("storedobjects/sticks_explore.rdata")
load("storedobjects/sticks_explore_2.rdata")
load("storedobjects/Sticks_Volume_Explore.rdata")

#Sticks_Volume_Explore_Product_Report_National

load("storedobjects/Sticks_Thin_Explore_2.rdata")

#####################################################################################


load("storedobjects/resource_stats_sample.rdata")
load("storedobjects/stand_classification.rdata")


#### Start Up Files ####

source("01_set_up_packages.R")
source("02_ui_configure.R")
source("03_load_data_files.R")
source("04_get_tables_to_present.R")
source("05_forest_maps.R")
source("06_rmarkdown_files.R")

#source("TableFunctions_gt.R")

source("Scripts/Highcharter_Example_1.R")
source("Scripts/Highcharter_Example_2.R")
source("Scripts/Highcharter_Example_3_LinePlots.R")

source("text_containers/ytgen_contents.r")
source("text_containers/data_source_contents.R")


ui <- fluidPage(
  theme = shinytheme("sandstone"),
  titlePanel("COSAT - Shiny Development Page"),
  sidebarPanel( width = 2,
    radioButtons("controller", "Summaries",
     choices=radio_button_choices, selected = 1),
    br(),
    selectInput("Region", 
    label = "Choose a Region:", 
    choices = RegionNames,
    textOutput("Region")
    ),
    selectInput("Snapshot", 
    label = "Choose a Year:", 
    choices = YearSnapshots,
    textOutput("Year")
    ),br(),
    h5(paste("Version:", Version_Name)),
    h5(paste("Date:", Version_Date))

   ),
    

  
mainPanel( width = 10,
   
   # Output: Tabset w/ plot, summary, and table ----
   tabsetPanel(#type = "tabs",
   id = "hidden_tabs",
   # Hide the tab values.
   # Can only switch tabs by using `updateTabsetPanel()`
   type = "hidden",
 
   tabPanelBody("Panel 1",tabsetPanel(
     tabPanel("Data Sources",br(),
 h2("Data Sources"),
 p("STICKS Out Turns"),
 p("PSM2i Survey Info"),
 p("YTGen Yield Request Product forecasts (relevant to PSM2i Surveys)"),
 p("LRM Product Forecast Data (all Subcompartments"),
 p("Subcompartment Database"),
 p("National Soil and Elevation Data"),
 p("Coillte Administrative Data (BAUs, HUs etc)")
 
 ),    
     # navbarMenu("Yield Analysis",
     # tabPanel("Large Sawlogs by Plot", 
     # h3("Large Sawlogs by Plot"),h6("Reviewed 5th Sept 2023"),
     # plotlyOutput("PlotGrade_b"),br(),
     # plotlyOutput("PlotGrade_a")),
     # tabPanel("Tree Grades Analysis",
     # h3("Tree Grades - Grade A and Grade Z Time Series"),
     ## h6("Reviewed 20th Sept 2023"),
     # fluidRow(
     #   column(
     #     width = 3,
     #     selectInput("GradeType", 
     #    label = "Choose a Grade type:", 
     #    choices = GradeType,
     #    textOutput("Grade Type")
     #     )
     #   ),
     #   column(width = 9, textOutput("MainTreeGradeText1"),
     #          textOutput("MainTreeGradeText2")
     #          
     #   )
     # ),
     # wellPanel(plotlyOutput("MainTreeGradePlot")),br())
     # ),
     navbarMenu("PSM2i Summaries",
   tabPanel("Data Summary", h3("Data Summary"),
     reactable::reactableOutput("MainReportTable")
   ),
    tabPanel("Area Surveyed by Year & BAU", h3("Survey by Year by BAU"),
  p("This section provides a summary of the area of surveyed stands, tallied by year and BAU"),
    gt_output("SurveyInfo_CountReport"))
     ) ,
     tabPanel("Contractors (2022/2023)",h3("Contractors (2022/2023)"),
 reactable::reactableOutput("PSM2i_Contractors_Report")
     ),
     ############ PSM2i Appendices ######
     navbarMenu("PSM2i - Additional Info",
   tabPanel("Plot Sizes by BAU",h3("Plot Sizes by BAU"),
     reactable::reactableOutput("Plot_Size_Report_BAU")
   ), 
   tabPanel("Plot Sizes by BAU and Year",h3("Plot Sizes by BAU and Year"),
     reactable::reactableOutput("Plot_Size_Report_BAU_Year")
   ),    
   tabPanel("Plot Size Breakdown",h3("Plot Size Breakdown"),
     reactable::reactableOutput("Plot_Size_Report")
   ), 
   tabPanel("Plot Size Report",h3("Plot Size Report"),
     reactable::reactableOutput("Plot_Size_Info")
   )
     ),
     
     
     
     tabPanel("YTGen",br(),
 plotlyOutput("SurveyInfo_AreaPlot")),
     navbarMenu("National Estate",    
   
   tabPanel("National Estate Area",  h3("National Estate"),br(),
     reactableOutput("National_Estate"),br()),
   tabPanel("Survey Coverage Report", h3("Survey Coverage Report"),
     reactableOutput("SurveyCoverage")
     #plotlyOutput("Plot5b"),DT::dataTableOutput("Report5a")
   ),
   tabPanel("National Species Distribution",h3("Species"),
     h4("Species Distribution"),
     gt_output("Species_Area_BAU"))
     )
    
   )
   
   ),
   
   
################### Panel 2 ######

###########################################################
###########################################################

server <- function(input, output, session) {
  

  observeEvent(input$controller, {
    #req(credentials()$user_auth)
    updateTabsetPanel(session, "hidden_tabs", 
    selected =  paste0("Panel ", input$controller))
  })
  

  Region = reactive({input$Region})


#####################################################################################
#####################################################################################

##### END OF SERVER COMPONENTS #####
    
}






# Run the application 
shinyApp(ui = ui, server = server)
