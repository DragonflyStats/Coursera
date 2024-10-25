library(flextable)
library(officer)

#### Fonts ####
bold_face_1 <- shortcuts$fp_bold(font.size = 24,font.family="Calibri")
bold_face_2 <- shortcuts$fp_bold(font.size = 20,font.family="Calibri")
bold_face_3 <- shortcuts$fp_bold(font.size = 16,font.family="Calibri")
bold_face_4 <- shortcuts$fp_bold(font.size = 14,font.family="Calibri")
bold_face_4_i <- shortcuts$fp_bold(font.size = 14,font.family="Calibri",italic=TRUE)

### Table Formatting ####
big_border = fp_border(color="darkgreen", width = 2)
border_v = fp_border(color="gray")
border_h = fp_border(color="gray")

#Baseline Year is defaulted to 2023
Current_Year <- year(Sys.Date())
Final_Year <- Current_Year + 30

RegionNames <- c("National",paste0("BAU",1:6))
YearSnapshots <- c("2022")

radio_button_choices = list(                          
                            "Introduction"=1, 
                            "Cutting Strategies" = 2,
                            "Resource Stats" = 3,
                            "Stem Profiling" = 4,
                            "Stand Classification" = 5,
                            "STICKS" = 6,
                            "R Code Examples" = 7,
                            "Maps" = 8
                            )

