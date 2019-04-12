#Celeste Connell
#Lab 11: More data filtering, subsetting, summarizing, and plotting

#--------------------------------------------------------------------------------------------------------------------------------------
# Part I: Getting set up to work with the data


# Import the data

WoodDensityData <- read.csv("GlobalWoodDensityDatabase.csv", stringsAsFactors = FALSE)

# Rename column 4 header

colnames(WoodDensityData)[colnames(WoodDensityData) == "Wood.density..g.cm.3...oven.dry.mass.fresh.volume"] <- "Density"

#--------------------------------------------------------------------------------------------------------------------------------------
# Part II: Working with density data


# Step 4: Removing rows with missing data

## outputs the row and column of the NA value(s)
## 4a: Row 12150

removerow <- which(is.na(WoodDensityData), arr.ind=TRUE)
removerow <- removerow[1]

## remove that row.

WoodDensityData <- WoodDensityData[-c(removerow), ]

nrow(WoodDensityData)

##5 alternative methods for removing na

#not the NA's, note logical negation with ! :
noNAdata1 <- originaldata[ !is.na(originaldata$Density), ]

#complete.cases() function
noNAdata2 <- originaldata[ complete.cases(originaldata), ]

#indexing with netgative integers means remove
nonNAdata3 <- originaldata[ -which(is.na(originaldata$Denesity)), ]

#in  base R, there is also a specific function
noNAdata4 <- na.omit(originaldata)

# and in the tidyverse...drop_na allows for more flexibility (only remove the row if 2 columns have na,  or specify the column, etc)
library("tidyr")
noNAdata5 <- drop_na(originaldata)



# Step 5: Dealing with one kind of pseudo-replication

library("dplyr")

##Creating a new dataset that contains the mean Density of each species

WoodDensityData_meanSpecies <- summarize(group_by(WoodDensityData, Binomial, Family), MeanOfSpecies = mean(Density))

## Does this new dataframe represent the same number of unique species in our original dataframe? YES !
nrow(WoodDensityData_meanSpecies) == length(unique(WoodDensityData$Binomial))

##BONUS for problem 5: Solve this problem in two different ways and validate that your two solutions produce exactly the same result.



# Step 6: Contrasting most and least dense families

##6a: Creating a new dataset that contains the mean Density of each family

WoodDensityData_meanFamily <- summarize(group_by(WoodDensityData, Family), MeanOfFamily = mean(Density))

##6b: Sort the result of problem 6a by MeanDensity (and store the sorted result in a data frame)

WoodDensityData_meanFamily <- WoodDensityData_meanFamily[order(WoodDensityData_meanFamily$MeanOfFamily),]

##6c: What are the 8 families with the highest average densities? What are the 8 families with the lowest average densities?

familyLowestAverageDensities <- head(WoodDensityData_meanFamily$Family, 8)
familyHighestAverageDensities <- tail(WoodDensityData_meanFamily$Family, 8)

#--------------------------------------------------------------------------------------------------------------------------------------
# Part III: Plotting

library(ggplot2)


# Step 7: Plotting densities of most and least dense families with facets

hi <- WoodDensityData_meanSpecies$Family == familyLowestAverageDensities







