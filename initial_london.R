################################################################################
### Title: Initial attempt to perform data fussion using conditional extremes. 
###        Testing set fuses CAMS data from London area and AURN monitoring 
###        stations.
### Author: Daniela Cuba
### Date: October 3rd, 2023
### Notes: Based on code from Villejo et al 2023 and Simpson et al 2023
################################################################################


### Load libraries ----
libs<-c("lubridate","abind","dplyr","RNetCDF","ncdf4",
        "ggplot2","sf")
lapply(libs,require,character.only=T)

### Load data ----


load("C:/Users/2223642C/OneDrive - University of Glasgow/Documents/PhD/UK_airpollutionDATA/london_griddedxmonth_data.RData") # longitude, latitude, time
load("C:/Users/2223642C/OneDrive - University of Glasgow/Documents/PhD/UK_airpollutionDATA/london_aurnlocs.RData")
aurn.data <- read.csv("C:/Users/2223642C/OneDrive - University of Glasgow/Documents/PhD/UK_airpollutionDATA/AURN_PM2p5Monthly_MAX_2013-2023.csv")
