# Syrian War impacts the health of Syrian children
# Celeste Connell

#---------------------------------------------------------------------------------------------------------------------------------------------

# Importing and exploring the dataset

SyrianHealthData <- read.csv("ORIGINAL_DATASET_WITHOUT_README_Elsafti-vanBerlaer_for_repository.csv", stringsAsFactors = F)

str(SyrianHealthData)
ncol(SyrianHealthData)


# Renaming the first column

colnames(SyrianHealthData)[colnames(SyrianHealthData)=="ï..pat_nr"] <- "pat_nr"

# Removing rows containing NA in the pat_nr column (represents ineligable participants)

SyrianHealthData <- SyrianHealthData[ -which(is.na(SyrianHealthData$pat_nr)), ]

# Now, I want to convert all data from numeric to categorical.

columnNames <- colnames(SyrianHealthData)
SyrianHealthData[,columnNames] <- lapply(SyrianHealthData[,columnNames] , factor)
str(SyrianHealthData)

#---------------------------------------------------------------------------------------------------------------------------------------------

# Chi-squared analyses

# Testing if governate and specific health outcomes are related

chisq.test(SyrianHealthData$gov, SyrianHealthData$Safe_water, correct=FALSE)
chisq.test(SyrianHealthData$gov, SyrianHealthData$clin_maln, correct=FALSE)
chisq.test(SyrianHealthData$gov, SyrianHealthData$rec_educ, correct=FALSE)
chisq.test(SyrianHealthData$gov, SyrianHealthData$vacc_avail, correct=FALSE)

columnNames

# Testing if age and specific health outcomes are related

chisq.test(SyrianHealthData$age_cat, SyrianHealthData$Safe_water, correct=FALSE)
chisq.test(SyrianHealthData$age_cat, SyrianHealthData$clin_maln, correct=FALSE)
chisq.test(SyrianHealthData$age_cat, SyrianHealthData$rec_educ, correct=FALSE)
chisq.test(SyrianHealthData$age_cat, SyrianHealthData$vacc_avail, correct=FALSE)

# Testing if gender and specific health outcomes are related

chisq.test(SyrianHealthData$gender, SyrianHealthData$Safe_water, correct=FALSE)
chisq.test(SyrianHealthData$gender, SyrianHealthData$clin_maln, correct=FALSE)
chisq.test(SyrianHealthData$gender, SyrianHealthData$rec_educ, correct=FALSE)
chisq.test(SyrianHealthData$gender, SyrianHealthData$vacc_avail, correct=FALSE)

#---------------------------------------------------------------------------------------------------------------------------------------------

The package ggplot2 provides an easy way to plot Chi square distributions. You have to simply specify a stat_function with dchisq as your function and then a list to args that indicates the degrees of freedom.

For example, here is sample code for a Chi square distribution for 4 degrees of freedom:
  
library(ggplot2)
install.packages("ggmosaic")
library(ggmosaic)

ggplot(SyrianHealthData, aes(Gov, Safe_water) +
         geom_mosaic()

              