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


