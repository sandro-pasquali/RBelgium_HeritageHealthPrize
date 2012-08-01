source("/home/jan/Work/RForgeBNOSAC/github/RBelgium_HeritageHealthPrize/Working/Globals/globalsettings.R")
require(ffbase)
require(LaF)
require(ETLUtils)

######################################################################
## Set up main global data settings
##
######################################################################
gd <- list()
gd$path.ff <- folders$fftempdir
gd$functions <- file.path(folders$working, "Functions", "utilities_basic.R")
gd$path.inputfiles <- folders$data
gd$zippedinputfile <- folders$input$zippedfile
gd$datasets <- c("targets","hospitaly2","hospitaly3","members","drugs","lab","condition","procedure","claims")
gd$inputfiles <- lapply(folders$input$inputfiles, FUN=function(x, path) file.path(path, x), path=folders$data)
gd$outputfiles <- list()
gd$outputfiles$import <- "import"
source(gd$functions)

######################################################################
## Unzip the file
##
######################################################################
unzip(zipfile=gd$zippedinputfile, list = TRUE)
unzip(zipfile=gd$zippedinputfile, list = FALSE, overwrite = TRUE, exdir = folders$data)
      
######################################################################
## Import using package ff
##
######################################################################
## Location of the ff files      
options("fftempdir" = gd$path.ff)

## Read in the targets
targets <- read.table.ffdf(file=gd$inputfiles$targets, FUN = "read.csv", na.strings = "", transFUN=lowercase_names)
hospitaly2 <- read.table.ffdf(file=gd$inputfiles$hospital.y2, FUN = "read.csv", na.strings = "", transFUN=lowercase_names)
hospitaly3 <- read.table.ffdf(file=gd$inputfiles$hospital.y3, FUN = "read.csv", na.strings = "", transFUN=lowercase_names)
## Read in the predictive features
members <- read.table.ffdf(file=gd$inputfiles$members, FUN = "read.csv", na.strings = "", transFUN=lowercase_names)
drugs <- read.table.ffdf(file=gd$inputfiles$drugs, FUN = "read.csv", na.strings = "", transFUN=lowercase_names)
lab <- read.table.ffdf(file=gd$inputfiles$lab, FUN = "read.csv", na.strings = "", transFUN=lowercase_names)
condition <- read.table.ffdf(file=gd$inputfiles$condition, FUN = "read.csv", na.strings = "", transFUN=lowercase_names)
procedure <- read.table.ffdf(file=gd$inputfiles$procedure, FUN = "read.csv", na.strings = "", transFUN=lowercase_names)
claims <- read.table.ffdf(file=gd$inputfiles$claims, FUN = "read.csv", na.strings = "", transFUN=lowercase_names)
## Example importing through LaF and ffbase::laf_to_ffdf
lf <- laf_open_csv(filename=gd$inputfiles$claims, 
	column_types = c("integer", "integer", "integer", "integer", 
	"categorical", "categorical", "categorical", "categorical", "categorical", "categorical", 
	"string", "categorical", "categorical", "integer"), 
  column_names = c("MemberID", "ProviderID", "Vendor", "PCP", 
  "Year", "Specialty", "PlaceSvc", "PayDelay", "LengthOfStay", "DSFS", 
  "PrimaryConditionGroup", "CharlsonIndex", "ProcedureGroup", "SupLOS"), 
  sep = ",", dec = ".", trim=FALSE, skip=1)
claims <- laf_to_ffdf(laf=lf)
claims <- lowercase_names(claims)
rm(lf)

######################################################################
## Save the ffdf
##
######################################################################
ffsave(targets, hospitaly2, hospitaly3, members, drugs, lab, condition, procedure, claims, 
	file=file.path(gd$path.ff, gd$outputfiles$import), rootpath = gd$path.ff)

