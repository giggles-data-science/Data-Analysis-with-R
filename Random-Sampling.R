#simulate random sampling

#pick 5 numbers at random from the set 1:10 using the sample function
#the first argument is a vector of values and second argument is sample size
#default is sampling without replacement add replace = TRUE for replacement
sample(1:10, 5)
sample(10,5)
sample(c("H","T"), 10, replace = T)
#simulate data with nonequal probabilities by using the prob argument
#simulate a sample of student test grades with an 80% chance of passing
sample(c("pass", "fail"), 15, replace = T, prob=c(0.8,0.2))
