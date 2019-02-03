#PART 1: BASIC OPERATIONS

#lab step #3: assigning 2 variables, startingBagsofChips (5) and numberOfGuests (8).
startingBagsOfChips <- 5
numberOfGuests <- 8

#lab step #5: assigning variable bagsPerGuest, representing that I expect each of my guests will eat 0.4 bags of chips. 
bagsPerGuest <- 0.4

#lab step #7: calculating the expected amount of leftover chip bags after my 8 guests AND myself each consume 0.4 bags.
#ANSWER: 1.4
startingBagsOfChips - ((numberOfGuests + 1) * bagsPerGuest)

#------------------------------------------------------------------------------------------------------------------------------------
#PART 2: SOME PRACTICE WITH OBJECTS THAT HOLD DATA, AND SOME PRACTICE USING SOME BUILT-IN FUNCTIONS WITH THOSE OBJECTS

#lab step #8: creating 5 vectors containing each person's ranking of each of the Star Wars films, starting with Episode 1.
#(For example, my rating contained in the vector "selfRanking" shows that Episode 1 is ranked 7th, Episode 2 is ranked 6th, and so forth...)
selfRanking <- c(7,6,5,1,2,3,4)
pennyRanking <- c(5,7,6,3,1,2,4)
jennyRanking <- c(4,3,2,7,6,5,1)
lennyRanking <- c(1,7,3,4,6,5,2)
stewieRanking <- c(6,7,5,4,3,1,2)

#lab step #9: accessing Penny and Lenny's ranking for Episode 4, and storing those rankings in new variables.
PennyIV <- pennyRanking[4]
LennyIV <- lennyRanking[4]

#lab step #10: concatenating all 5 vectors into one matrix 
allRankingsMatrix <- cbind(selfRanking, pennyRanking, jennyRanking, lennyRanking, stewieRanking)

#lab step #11: viewing the structure of PennyIV, pennyRanking, & allRankings.
str(PennyIV) #output: num 3. Just the number 3
str(pennyRanking) #output: num [1:7] 5 7 6 3 1 2 4. 7 different numbers in one row
str(allRankingsMatrix) #output: num [1:7, 1:5] 7 6 5 1 2 3 4 5 7 6. Numbers, 7 rows, 5 columns, and a header

#lab step #12: Creating identical dataframes, one from the matrix, and one from the 5 vectors.
dataFrameFromMatrix <- as.data.frame(allRankingsMatrix)
dataFrameFromVectors <- data.frame(selfRanking, pennyRanking, jennyRanking, lennyRanking, stewieRanking)

#lab step #13: Comparing similarities and differences between the matrix and the dataframes.
#The matrix and dataframe look to be identical and have identical values in the same spots.
#However, there are differences in how they're encrypted/how R views them.
#DIFFERENCES: 
#typeof() reveals that allRankingMatrix is a "double" variable, and dataFrameFromMatrix is a "list" variable.
#Additionally, str() of allRankingMatrix yields more technical output, 
#while str() of the data frame outputs a more organized summary including the column names, what kind of value they hold (num), and the values themselves.
dim(allRankingsMatrix)
dim(dataFrameFromMatrix)
str(allRankingsMatrix)
str(dataFrameFromMatrix)
allRankingsMatrix == dataFrameFromMatrix
typeof(allRankingsMatrix)
typeof(dataFrameFromMatrix)

#lab step #14: creating a vector of all Star Wars episodes in roman numerals
StarWarsEpisodes <- c("I", "II", "III", "IV", "V", "VI", "VII")
str(StarWarsEpisodes)

#lab step #15: naming the rows of my matrix and dataframe with the Roman Numeral vector created in step #14.
?row.names
row.names(allRankingsMatrix) <- StarWarsEpisodes
row.names(dataFrameFromMatrix) <- StarWarsEpisodes

#lab step #16: Access the third row of the matrix produced from step #10
allRankingsMatrix[3,]

#lab step #17: Access the fourth column from a data frame produced from step #12
dataFrameFromMatrix[,4]

#lab step #18: Access your ranking for Episode V.
dataFrameFromMatrix[5,1]

#lab step #19: Access Penny's ranking for Episode II.
dataFrameFromMatrix[2,2]

#lab step #20: Access everyone's rankings for episodes IV - VI.
dataFrameFromMatrix[4:6,]

#lab step #21: Access everyone's rankings for episodes II, V, and VII.
dataFrameFromMatrix[c(2,5,7),]

#lab step #22: Access rankings for just Penny, Jenny, and Stewie for just episodes IV and VI.
dataFrameFromMatrix[c(4,6),c(2,3,5)]

#lab step #23: Switch Lenny's rankings for Episodes II and V
new <- dataFrameFromMatrix[2,4] #7
dataFrameFromMatrix[2,4] <- dataFrameFromMatrix[5,4]
dataFrameFromMatrix[5,4] <- new

#lab step #24: indexing with specific row and column names rather than their location
dataFrameFromMatrix[3,2]
dataFrameFromMatrix["III","pennyRanking"]

#lab step #25: "undo" the swap made in step 23 using the method in step 24
new2 <- dataFrameFromMatrix["II","lennyRanking"] #6
dataFrameFromMatrix["II","lennyRanking"] <- dataFrameFromMatrix["V","lennyRanking"]
dataFrameFromMatrix["V","lennyRanking"] <- new2

#lab step #26: redo the swap made in step 23
new3 <- dataFrameFromMatrix$lennyRanking[2] #7
dataFrameFromMatrix$lennyRanking[2] <- dataFrameFromMatrix$lennyRanking[5]
dataFrameFromMatrix$lennyRanking[5] <- new3


