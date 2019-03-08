# Lab 8: Documentation and Metadata
# Celeste Connell

#-------------------------------------------------------------------------------------------------------------------------------

# Transforming logistic growth model into a function
## to execute: logisticGrowth(r, K, numGens, startingPopSize)

logisticGrowth <- function(r=NA, K=NA, numGens=NA, startingPopSize=NA) {
  #Pre-allocating data storage
  abundance <-  rep(0, numGens)
  abundance[1] <- startingPopSize
  
  #Loop. Runs the discrete-time logistic growth equation
  for (t in 2:numGens) {
    abundance[t] <- abundance[t-1] + ( r * abundance[t-1] * ( K - abundance[t-1])/K )
  }
  generations <- (1:numGens)
  myMatrix <- cbind(generations, abundance)
  plot(generations, abundance, main="Modeling Logistic Growth", xlab="Number of generations/time", ylab="Abundance", col="plum3", pch=16)
  return(myMatrix)
}

# Testing out my logisticGrowth function

logisticGrowthData <- logisticGrowth(0.6,100,20,5)

# Write the data to a new csv file

write.csv(x = logisticGrowthData, file = "logisticGrowthData.csv", row.names = FALSE)
