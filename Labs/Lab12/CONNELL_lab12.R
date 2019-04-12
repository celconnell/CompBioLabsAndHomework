#Celeste Connell
#Lab 12: Choose your own adventure -- NEW PROBLEMS

#--------------------------------------------------------------------------------------------------------------------------------------

# First, import the data and load ggplot2:

camData <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F)

library("ggplot2")

#--------------------------------------------------------------------------------------------------------------------------------------


#Problem 1: A bar plot in ggplot(). 
#found out that geom_bar automatically makes the height of the bar proportion to the number of cases in each group

speciesCountPlot <- ggplot(camData, aes(x=Species)) + 
  geom_bar()

speciesCountPlot

#--------------------------------------------------------------------------------------------------------------------------------------

#Problem 2: rotate the axis tick labels

problem2Plot <- speciesCountPlot + theme(axis.text.x = element_text(angle = 90, hjust = 1))

problem2Plot

#--------------------------------------------------------------------------------------------------------------------------------------

#Problem 3: A different orientation, scaling, and sorting


# Graph. You can reorder by Species in your mapping element

problem3Plot <- ggplot(camData, aes(x=reorder(Species, -table(Species)[Species]))) + geom_bar()

#Now, you can transform the count axis to be logarithic AND flip the axes

problem3Plot <- problem3Plot + labs(x="Species", y = "Logged count") + scale_y_log10() + coord_flip() 

problem3Plot
