#Celeste Connell
#Lab 9: Parsing dates and times from a real data file

#--------------------------------------------------------------------------------------------------------------------------------------

#First, import the data:

camData <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F)


#Problem 1: Converting the DateTime data elements from characters into date and time objects

camDataCopy <- camData
camDataCopy$DateTime <- strptime(camDataCopy$DateTime, format = "%d/%m/%Y %H:%M", tz="UTC")
class(camDataCopy$DateTime)


#Problem 2: Some of the years above were imported incorrectly because the original data are inconsistently formatted. 
# (Specically, some of the data (5645 entries) have a two-digit year format whereas others (8959 entries) have the 4-digit format.
# How could you figure out which were NOT converted properly by your method from problem 1?

needToChange <- (which(camDataCopy$DateTime < 2013))
length(needToChange)

needToChange


# Problem 3: How could you use your methods from problems 1 and 2 to create an ACCURATE vector of dates and times?
camData$DateTime[needToChange] <- strptime(camData$DateTime[needToChange], format = "%e/%m/%y %H:%M", tz="UTC")
?strptime

#regular expressions.................................................try next time
(which(camData$DateTime) == /

# Problem 4: Considering all the data in the import (not just the times): 
# Once you had time accurately parsed, how could you look examine at the average time between observations 
# for a given combination of Season, Station, and Species?