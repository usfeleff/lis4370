# Create a vector to use for testing
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

# Create the function as provided in the assignment,
# note that, as written, this function will not work
 myMean <- function(assignment2) { return(sum(assignment)/length(someData)) }

# Uncomment the next line to test the (broken) version of the function0
#  myMean(assignment2)
# this will return:
# Error in myMean(assignment2) : object 'assignment' not found
# and stop execution of any further code

 # Create a working version of the function
 myNewMean <- function(aVector) { return(sum(aVector)/length(aVector)) }

 # Test the new function
 # (the mean of the test vector is 19.25)
 myNewMean(assignment2)

 # for further commentary please see
 # https://thestorythusr.wordpress.com/2021/01/22/module-02-a-basic-function/
