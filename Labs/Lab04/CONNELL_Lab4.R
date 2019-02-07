#Lab 4: For loops
#Celeste Connell
###############################################################################################################################################
#Part 1
#1. Write a "for loop" that prints the word "hi" to the console 10 times
for (i in seq(1:10)) {
  print("hi")
}
#2. Tim's balance after every week, for 8 weeks
#Parameters
startingMoney <- 10 #Tim starts with $10 in piggy bank
weeklyAllowance <- 5 #His parents give him $5 a week
packsGum <- 2 #Tim buys 2 packs of gum
priceGumPerPack <- 1.34 #Each pack of gum costs $1.34
weeks <- seq(1:8) 
#Pre-allocating data storage
eachWeek <- length(weeks)
weeklyBalance <- rep(0,eachWeek)
weeklyBalance[1] <- startingMoney + weeklyAllowance - (packsGum*priceGumPerPack)
#Loop. Starting with WeeklyBalance[2]. This loop takes the remaining balance from the previous week, adds weekly allowance, subtracts gum expenditure,
#and store THAT value as the next "i" in WeeklyBalance.
for (i in 2:eachWeek) {
  weeklyBalance[i] <- weeklyBalance[i-1] + weeklyAllowance - (packsGum*priceGumPerPack)
}
#3. Conservation biologist population rate problem
#Parameters
populationGrowthRate <- (-.05) # population shrinks by 5% each year
startingPop <- 2000 #starting pop is 2000 individuals
years <- seq(1:7)
#Pre-allocating data storage
eachYear <- length(years)
populationByYear <- rep(0,eachYear)
populationByYear[1] <- startingPop + (startingPop * populationGrowthRate)
#Loop
for (i in 2:eachYear) {
  populationByYear[i] <- populationByYear[i-1] + (populationByYear[i-1] * populationGrowthRate)
}
#4. Discrete-time logistic growth equation
#Parameters
K <- 10000 #carrying capacity
r <- 0.8 #intrinsic growth rate
timeStep <- seq(1:12)
#Pre-allocating data storage
totalTime <- length(timeStep)
abundance <-  rep(0,totalTime)
abundance[1] <- 2500
#loop
for (t in 2:totalTime) {
  abundance[t] = abundance[t-1] + ( r * abundance[t-1] * (K - abundance[t-1])/K )
  print(abundance[t])
}
###############################################################################################################################################
#Part 2





