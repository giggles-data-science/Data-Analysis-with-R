#one sample t test

monthly.revenue <-c(337898, 456297, 367366, 378377, 464878, 383897, 474689, 373877, 383898, 484778)
mean(monthly.revenue)
sd(monthly.revenue)
quantile((monthly.revenue)

#We can investigate if monthly earnings deviates systematically from a recommended value of 574787.

t.test(monthly.revenue, mean = 574787)

#	One Sample t-test

# data:  monthly.revenue
# t = 24.34, df = 9, p-value = 1.597e-09
# alternative hypothesis: true mean is not equal to 0
# 95 percent confidence interval:
 # 372434.3 448756.7
# sample estimates:
# mean of x 
 # 410595.5

# p < 0.05 given the 5% level of significance we can say the data deviates signiiantly from the hypothesis that the mean
#monthly earnings is 574787

#95% confidence interval for the true mean and values from which the data do not deviate significantly 

#true mean is between 372434.3 and 448756.7 which is true when you look at the point estimate of the true mean

#observed mean is the point estimate of the true mean 



#two sample t test
         
#Question trying to answer: Do I trust the difference in means to be a result of differences in population 
# or are the populations equivalent?
     

#used to test the hypothesis that two samples may be assumed to come from distributions with the same mean 
#use if you have two sets of data and want to know if they're drawn from the same population
#Null hypothesis: populations are the same
#a small p-value indicates that it's highly unlikely the difference in means is simply due to chance.
#A large p-value indicates that it's highly likely that the difference in means is simply due to chance.
#If large p-value then we can assume the null is true and the difference we measured is the luck of the draw.

attach(iris)

#first let's subset the data to only include two species
subset <- iris[ which(Species =='setosa' | Species == "versicolor"), ]

#Sepal.Width is described by Species
t.test(subset$Sepal.Width ~ subset$Species)

#	Welch Two Sample t-test

# data:  subset$Sepal.Width by subset$Species
# t = 9.455, df = 94.698, p-value = 2.484e-15
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
# 0.5198348 0.7961652
# sample estimates:
#    mean in group setosa mean in group versicolor 
#                   3.428                    2.770 

#p-value indicates a significant difference at the 5% level

#95% confidence interval of the differences of means is between 0.5198348 and 0.7961652 which is true
#for the computed difference between the sample estimates 3.428 - 2.770 = 0.658


#this test doesn't assume the variances are true, if you would like to test this assumption then set var.equal = T or 

var.test(subset$Sepal.Width ~ subset$Species)

# F test to compare two variances

# data:  subset$Sepal.Width by subset$Species
# F = 1.4592, num df = 49, denom df = 49, p-value = 0.1895
# alternative hypothesis: true ratio of variances is not equal to 1
# 95 percent confidence interval:
#  0.828080 2.571444
# sample estimates:
# ratio of variances 
#           1.459233 

#pvalue is not significant so there is no evidence against the assumption that the variances are identical
#note that the confidence intervals are wide which may lead us to believe that the variances probably aren't homogeneous 

#test is also based on the assumption that the groups are independent so the test should not be run on paired data
