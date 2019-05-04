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
columnNames

#---------------------------------------------------------------------------------------------------------------------------------------------

# Chi-squared analyses


# NOTE: I initially tried to create my own chi squared function where all I needed to enter is a predictor variable but I couldn't get it to work.
#myChiSquaredFunction <- function(predictorVariable) {
#  for (i in 1:length(predictorVariable)) {
#    chisq.test(SyrianHealthData$gov, SyrianHealthData$predictorVariable, correct=FALSE)
#  }
#}
#myChiSquaredFunction(SyrianHealthData)


# Testing if governate and specific health outcomes are related

chisq.test(SyrianHealthData$gov, SyrianHealthData$Safe_water, correct=FALSE)
chisq.test(SyrianHealthData$gov, SyrianHealthData$clin_maln, correct=FALSE)
chisq.test(SyrianHealthData$gov, SyrianHealthData$rec_educ, correct=FALSE)
chisq.test(SyrianHealthData$gov, SyrianHealthData$spec_HC_prov, correct=FALSE)

# Testing if age and specific health outcomes are related

chisq.test(SyrianHealthData$age_cat, SyrianHealthData$Safe_water, correct=FALSE)
chisq.test(SyrianHealthData$age_cat, SyrianHealthData$clin_maln, correct=FALSE)
chisq.test(SyrianHealthData$age_cat, SyrianHealthData$rec_educ, correct=FALSE)
chisq.test(SyrianHealthData$age_cat, SyrianHealthData$spec_HC_prov, correct=FALSE)

# Testing if gender and specific health outcomes are related

chisq.test(SyrianHealthData$gender, SyrianHealthData$Safe_water, correct=FALSE)
chisq.test(SyrianHealthData$gender, SyrianHealthData$clin_maln, correct=FALSE)
chisq.test(SyrianHealthData$gender, SyrianHealthData$rec_educ, correct=FALSE)
chisq.test(SyrianHealthData$gender, SyrianHealthData$spec_HC_prov, correct=FALSE)

#---------------------------------------------------------------------------------------------------------------------------------------------
  
# Mosaic plots

# The first plot will depict whether or not children in each governorate have access to a pediatric healthcare provider

tableHealthCare <- table(SyrianHealthData$spec_HC_prov, SyrianHealthData$gov)
colnames(tableHealthCare) <- c("Aleppo", "Idleb", "Hamah", "Lattakia")             
row.names(tableHealthCare) <- c("not available", "available", "unknown")
tableHealthCare

mosaicplot(t(tableHealthCare), col = c("firebrick", "cyan4", "pink"), sub = "Governorate", ylab = "pediatric healthcare provider available?",
           cex.axis = 0.8, main = "Access to healthcare by Governorate")

# The second plot will depict clinial signs of nutrition of children by governorate

tableMalnutrition<- table(SyrianHealthData$clin_maln, SyrianHealthData$gov)
colnames(tableMalnutrition) <- c("Aleppo", "Idleb", "Hamah", "Lattakia") 
row.names(tableMalnutrition) <- c("no", "yes", "unknown")
tableMalnutrition

mosaicplot(t(tableMalnutrition), col = c("cyan4", "firebrick", "pink"), sub = "Governorate", ylab = "Clinical signs of malnutrition?",
           cex.axis = 0.8, main = "Malnutrition by governorate")

