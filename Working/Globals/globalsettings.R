require(ff)

folders <- list()
## Folder structure
folders$root <- "/home/jan/Work/RForgeBNOSAC/github/RBelgium_HeritageHealthPrize"
folders$data <- file.path(folders$root, "Data")
folders$scoring <- file.path(folders$root, "Scoring")
folders$working <- file.path(folders$root, "Working")
## Names of the input inputfiles
folders$input$zippedfile <- file.path(folders$data, "HHP_release3.zip")
folders$input$inputfiles <- list()
folders$input$inputfiles$targets <- "Target.csv"
folders$input$inputfiles$hospital.y2 <- "DaysInHospital_Y2.csv"
folders$input$inputfiles$hospital.y3 <- "DaysInHospital_Y3.csv"
folders$input$inputfiles$members <- "Members.csv"
folders$input$inputfiles$claims <- "Claims.csv"
folders$input$inputfiles$drugs <- "DrugCount.csv"
folders$input$inputfiles$lab <- "LabCount.csv"
folders$input$inputfiles$condition <- "Lookup PrimaryConditionGroup.csv"
folders$input$inputfiles$procedure <- "Lookup ProcedureGroup.csv"
## Directory of the ff files - usefull if you don't have a lot of disk space
folders$fftempdir <- getOption("fftempdir")
folders$fftempdir <- "/media/SAMSUNG_/Work/Workspace"


