#Lab 4: For loops
#Celeste Connell

#-------------------------------------------------------------PART 1-------------------------------------------------------------

#lab step #1: Write a "for loop" that prints the word "hi" to the console 10 times

for (i in seq(1:10)) {
  print("hi")
}



#lab step #2: Tim's balance after every week, for 8 weeks

#Parameters
startingMoney <- 10 #Tim starts with $10 in piggy bank
weeklyAllowance <- 5 #His parents give him $5 a week
packsGum <- 2 #Tim buys 2 packs of gum/week
priceGumPerPack <- 1.34 #Each pack of gum costs $1.34
weeks <- seq(1:8) 

#Pre-allocating data storage
eachWeek <- length(weeks)
weeklyBalance <- rep(0,eachWeek)
weeklyBalance[1] <- startingMoney + weeklyAllowance - (packsGum * priceGumPerPack)

#Loop. Starting with WeeklyBalance[2]. This loop takes the remaining balance from the previous week, adds weekly allowance, 
#subtracts gum expenditure, and store THAT value as the next "i" in WeeklyBalance.
for ( i in 2:eachWeek ) {
  weeklyBalance[i] <- weeklyBalance[i-1] + weeklyAllowance - (packsGum * priceGumPerPack)
}



#lab step #3: Conservation biologist population rate problem

#Parameters
populationGrowthRate <- (-.05) # population shrinks by 5% each year
startingPop <- 2000 #starting pop is 2000 individuals
years <- seq(1:7)

#Pre-allocating data storage
eachYear <- length(years)
populationByYear <- rep(0, eachYear)
populationByYear[1] <- startingPop + (startingPop * populationGrowthRate)

#Loop
for (i in 2:eachYear) {
  populationByYear[i] <- populationByYear[i-1] + (populationByYear[i-1] * populationGrowthRate)
}



#lab step #4: Discrete-time logistic growth equation

#Parameters
K <- 10000 #carrying capacity
r <- 0.8 #intrinsic growth rate
time <- seq(1:12)

#Pre-allocating data storage
totalTime <- length(time)
abundance <-  rep(0, totalTime)
abundance[1] <- 2500

#Loop
for (t in 2:totalTime) {
  abundance[t] = abundance[t-1] + ( r * abundance[t-1] * (K - abundance[t-1])/K )
  print(abundance[t])
}


#-------------------------------------------------------------PART 2-------------------------------------------------------------

#lab step #5: 4 parts

##5a: Repeat "0" 18 times
vec <- rep(0, 18)

##5b: Loop, storing 3 times the ith value of i in its ith spot
for (i in seq(1:18)) {
  vec[i] <- 3 * i
}
print(vec)

##5c: Creating a new vector, same as 5a, except the first value is "1"
vec2 <- rep(0, 18)
vec2[1] <- 1

##5d: Loop, storing the new value as 1 + twice the value in the previous vector position
for (i in 2:18) {
  vec2[i] <- 1 + (2 * vec2[i-1])
}
print(vec2)



#lab step #6: Fibonacci

#Parameters
fibonacci <- rep(0,20)
fibonacci[2] <- 1

#Loop
for (i in 3:20) {
  fibonacci[i] <- fibonacci[i-1] + fibonacci[i-2]
}
print(fibonacci)



#lab step #7: Redoing step 4. NOTE: Data is already stored in vectors from step 4. Below is the plot.
plot(time, abundance)


#-------------------------------------------------------------PART 3-------------------------------------------------------------

#lab step #8: optional challenge problems (5 parts)

##8a: Read in data file
co2Data <- read.csv("CO2_data_cut_paste.csv")

##8b: converting data type from integer to numeric, for all columns except for "Year"
#
#
#for (i in 2:8) {
#  class(co2Data[,i]) = "numeric"
#}
#str(co2Data)
