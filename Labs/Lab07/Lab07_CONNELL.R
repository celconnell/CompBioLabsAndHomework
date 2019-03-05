#Celeste Connell
#Lab 7: Putting the FUN in FUNCTION !

#--------------------------------------------------------------------------------------------------------------------------------------

#Problem #1: Write a function that calculates and returns the area of a triangle when given base and height
##to execute function: triangleArea(base, height)

triangleArea <- function(base=NA,height=NA) {
  return(0.5 * base * height)
}

#testing triangleArea function

triangleArea(10,9) #executing: a triangle with a base of 10 and height of 9 has an area of 45

#--------------------------------------------------------------------------------------------------------------------------------------

#Problem #2: Write a function that calculates and returns the absolute value of a number
##to execute function: myAbs(number/vector)

myAbs <- function(x=NA) {
  for (i in 1:length(x)) {
    if (x[i] < 0) {
      x[i] <- (x[i] * -1)
    }
  } 
  return(x)
}

#testing myAbs function

myAbs(5)
myAbs(-2.3)
myAbs(c(1.1, 2, 0, -4.3, 9, -12))

#--------------------------------------------------------------------------------------------------------------------------------------

#Problem #3: Write a function that returns a vector of the first n Fibonacci numbers, where n is any integer >= 3
##to execute function: fibonacciFunction(n, starting #0 or 1)
##example: fibonacciFunction(5, 0) #this will create a vector of the first 5 values of the Fibonacci sequence, starting with 0

fibonacciFunction <- function(n=NA, startingNumber=NA) {
  # if startingNumber is 0:
  if (startingNumber==0) {
    fibonacci <- rep(0, n)
    fibonacci[2] <- 1
        for (i in 3:n) {
          fibonacci[i] <- fibonacci[i-1] + fibonacci[i-2]
  } 
    return(fibonacci)
}
  #if starting number is 1:
  else if (startingNumber==1) {
    fibonacci <- rep(0, n)
    fibonacci[1] <- 1
    fibonacci[2] <- 1
      for (i in 3:n) {
        fibonacci[i] <- fibonacci[i-1] + fibonacci[i-2]
    } 
    return(fibonacci)
  }
}

#testing fibonacciFunction

fibonacciFunction(20, 1)


#--------------------------------------------------------------------------------------------------------------------------------------

#Problem #4a: Write a function that takes two numbers as its arguments and returns the square of the difference between them.

differenceSquared <- function(x=NA, y=NA) {
  return( (x - y) ^2 )
}

# testing differenceSquared function

differenceSquared(3,5)
differenceSquared(c(2,4,6), 4)

#Problem #4b: Imagine that R did NOT have a function to calculate the average (i.e., arithmetic mean) of a vector of numbers. 
#Write a function of your own that calculates the average of a vector of numbers. 
#In other words, your function should take a vector of numbers as its argument, and it should return the average, 
#but you can NOT use the mean() function. Hint: you will probably want to make use of the sum() function for efficiency.

myMean <- function(x=NA) {
  return(sum(x) / length(x))
}

# importing data and testing myMean function

data <- read.csv("DataForLab07.csv")
myMean(data$x)

#Problem #4c: Sum of squares. The sum of squared deviations from the mean. (For a given dataset, one calculates the mean,
#then for each data point, the mean is subtracted from the data point, and the resulting difference is squared. All of these
#squared differences are then summed.) Write a function that calculates and returns the sum of squares. Your function
#should take a vector of numeric data as its argument. NOTE: write your sum of squares function so that it makes use of 
#the previous two functions you wrote.
##to execute: sumofSquares(vector)

dataVector <- data$x

sumOfSquares <- function(vectorInput=NA) {
  vectorMean <- myMean(vectorInput) 
  vectorOfSquaredValues <- rep(0,length(vectorInput))
  for (i in 1:length(vectorInput)) {
    vectorOfSquaredValues[i] <- differenceSquared(vectorInput[i],vectorMean)
  }
  return(sum(vectorOfSquaredValues))
}

#testing the sumOfSquares function

sumOfSquares(dataVector)
