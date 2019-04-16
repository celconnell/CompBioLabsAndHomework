# Syrian War impacts the health of Syrian children
# Celeste Connell

#---------------------------------------------------------------------------------------------------------------------------------------------

# Importing and exploring the dataset

SyrianHealthData <- read.csv("DATASET!_Elsafti-vanBerlaer_for_repository.csv", stringsAsFactors = F)

str(SyrianHealthData)
ncol(SyrianHealthData)

# Renaming the first column

colnames(SyrianHealthData)[colnames(SyrianHealthData)=="ï..pat_nr"] <- "pat_nr"

# Removing rows containing NA in the pat_nr column (represents ineligable participants)

SyrianHealthData <- SyrianHealthData[ -which(is.na(SyrianHealthData$pat_nr)), ]

