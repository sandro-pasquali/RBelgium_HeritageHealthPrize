RBelgium Heritage Health Prize competition code
===============================================

R code for the Kaggle Heritage Health Prize.
The R code is organised in the following folders

  - Data (data downloaded from https://www.heritagehealthprize.com/c/hhp/download/HHP_release3.zip)
  - Scoring (a folder containing the scores uploaded to the)
  - Working (reading of SQL data through RODBC)
  - yourusername (folder used by you only e.g folder with name jan = folder used by Jan only)

An example can be found at http://www.bnosac.be/blog/19-get-your-large-sql-data-in-ff-swiftly

Data
-----------
Log in to https://www.heritagehealthprize.com, download the data and put it in the folder.
There should be a zip file which contains the 9 files and the data dictionary.

Can contain folders with intermediary (R)data files.

Scoring
-----------
Should contain a folder with a date in YYYYMMDD format and the csv file with the score as well as a small tekst file indicating how the scoring process was done.
The 'Functions' folder contains usefull functions, the 'Globals' folder contains global settings for the project like working directories which you can easily change and source in R to start up at your computer.
Other folders are related to functionality e.g the Import folder imports the files.

Working
-----------
A folder which will evolve containing R scripts used to create scores. Everyone can use this folder.

yourusername
-----------
A folder which only you can use 

