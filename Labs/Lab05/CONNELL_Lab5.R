#Celeste Connell
#Lab 5: Loops & Conditionals

#-------------------------------------------------------------PART 1-------------------------------------------------------------

#lab step #1: Assign a value to x, and write and if-else statement that checks if the value is larger than 5

x <- 69
greaterThan <- 5

if ( x > greaterThan) {
  cat(paste("Yas, ",x, "is greater than", greaterThan, "."))
} else {
  cat(paste("Nope,",x, "is less than or equal to", greaterThan, "."))
}



#lab step #2: Working with Vector1.csv (6 parts)
vector1Data <- read.csv("Vector1.csv")

##2a: Using a for() loop, write code that checks each value and replaces every negative value with NA

vector1DataLength <- nrow(vector1Data)

for ( i in 1:vector1DataLength ) {
  if ( vector1Data$x[i] < 0 ) {
    vector1Data$x[i] <- NA
  }
}

##2b: Using vectorized code (no loop) that makes use of "logical" indexing, replace all those NA values with NaN.

replacewithNaN <- (is.na(vector1Data$x))
vector1Data$x[replacewithNaN] <- NaN

##2c: Using a which() statement and integer indexing, replace all those NaN values with a zero.

replaceWithZero <- which (is.nan(vector1Data$x))
vector1Data$x[replaceWithZero] <- 0

##2d: Determine how many of the values from the imported data fall in the range between 50 and 100 (inclusive of those endpoints).

inBetween50and100 <- vector1Data$x >=50 & vector1Data$x <=100
inBetween50and100
lengthInBetween50and100 <- length(inBetween50and100[inBetween50and100 == TRUE])
cat(paste("There are",lengthInBetween50and100,"values that fall in the range between 50 and 100, inclusive of those endpoints."))

##2e: Create a new vector of data points that fall in the range between 50 and 100
FiftyToOneHundred <- vector1Data$x[inBetween50and100]

##2f: Save FiftyToOneHundred in a new .csv file
write.csv( x = FiftyToOneHundred , file = "FiftyToOneHundred.csv" )



#lab step #3: Working with CO2_data_cut_paste.csv (2 parts)
CO2Data <- read.csv("CO2_data_cut_paste.csv")

##3a: What was the first year for which data on "Gas" emissions were non-zero?

NonZeroGasPositions <- which(CO2Data$Gas > 0)
YearsNonZeroGas <- CO2Data$Year[NonZeroGasPositions]
cat(paste("The first year for which data on 'gas' emissions were non-zero:",YearsNonZeroGas[1]),".")

##3b: During which years were "Total" emissions between 200 and 300 million metric tons of carbon?

totalEmissionsRange <- which(CO2Data$Total > 200 & CO2Data$Total < 300)
YearsEmissionsRange <- CO2Data$Year[totalEmissionsRange]  
cat(paste(YearsEmissionsRange))

#-------------------------------------------------------------PART 2-------------------------------------------------------------

#lab step 2.1: Set up parameter values

totalGenerations <- 1000
initPrey <- 100 	# initial prey abundance at time t = 1
initPred <- 10		# initial predator abundance at time t = 1
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators

#lab step 2.2: Set up new vectors 

time <- seq(totalGenerations)
nPrey <- rep(0, totalGenerations) #data storage for nPrey
nPrey[1] <- 100
pPred <- rep(0, totalGenerations) #data storage for pPred
pPred[1] <- 10

#lab step 2.3: write a loop that implements the calculations

for (t in 2:totalGenerations) {
  nPrey[t] <- nPrey[t-1] + (r * nPrey[t-1]) - (a * nPrey[t-1] * pPred[t-1])
  pPred[t] <- pPred[t-1] + (k * a * nPrey[t-1] * pPred[t-1]) - (m * pPred[t-1])
}

#lab step 2.4: Editing loop so that if values are negative, store 0

for (t in 2:totalGenerations) {
  if (nPrey[t-1] > 0 && pPred[t-1] > 0) {
  nPrey[t] <- nPrey[t-1] + (r * nPrey[t-1]) - (a * nPrey[t-1] * pPred[t-1])
  pPred[t] <- pPred[t-1] + (k * a * nPrey[t-1] * pPred[t-1]) - (m * pPred[t-1])
  } else {
    nPrey[t] <- 0
    pPred[t] <- 0
  }
}


#lab step 2.5: make a plot of the abundances of prey and predators over time

plot(time, nPrey, col="pink", xlab="# of generations", ylab="Abundance")
lines(time, pPred, col="blue")
legend("topright", legend=c("Prey abundance", "Predator abundance"), col=c("pink","blue"), lty=1, cex=1)

#lab step 2.6: Creating a matrix of results and export it to a csv file

myResults <- cbind(time, nPrey, pPred)
colnames(myResults) <- c("TimeStep", "PreyAbundance", "PredatorAbundance")
write.csv(x = myResults, file="PredPreyResults.csv")
myResults
