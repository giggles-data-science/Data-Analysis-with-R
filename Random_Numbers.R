#create random numbers in R that behave as if they were drawn randomly

#they are used to create simulated data sets in order to study the accuracy of 
#mathematical approximations and the effect of assumptions being violated

#compute 15 random numbers from a normal distribution with mean 0 sd 1
rnorm(15)

#compute 15 random numbers from a normal distribution with mean 12 sd 5
rnorm(15, mean = 12, sd = 5)
