#get an impression of the shape of the distribution by visualizing a histogram 
#histogram shows the count of observations in a particular bin

hist(x)

#specify breaks for bins w/ breaks = n

#Create histogram to view number of students in 1st-5th grade, 6th - 8th grade, and 9th-12th.
mid.grade <-c(3.5, 7.5, 11)
student.count <-c(534, 303, 487)
grade.acc <- rep(mid.grade, student.count)
brk <-c(1,5,8,12)
hist(grade.acc, breaks = brk)

#density for a continuous distribution is a measure of the relative probability of getting a value close to x
#the probability of of getting a value in a particular interval is the area under the corresponding part of the curve 

#density for a discrete distribution is used for the point probability of getting exactly the value of x 
