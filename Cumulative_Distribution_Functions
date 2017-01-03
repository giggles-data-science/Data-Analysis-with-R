#the cumulative distribution function describes the probability of getting x o less in a given distribution

#plotting cumulative density functions isn't as informative as providing the actual probabilities

#imagine we know that that the price of a bowl of pho is in San Francisco is well described by a normal distribution with
#a mean of 8.72 and a standard deviaion of 1.28. Then if a customer has a bowl of pho for 10.46, there is 

1-pnorm(10.46, mean = 8.72, sd = 1.28)
#[1] 0.08701389
#There's about 8.7% of the general population, that has that price or higher.

#16 people receive Treatment A and Treatent B and are asked which one they prefer. 9 people prefer Treatment A. 
#Let's calculate how improbable it is that this happened by chance. 

1-pbinom(8, 16, .5) + pbinom(7, 16, .5)
#[1] 0.8036194

The probability that 7 or fewer people prefer A by random in a 16 person test between test A and test B.

#plotting the empirical cumulative distribution 

x <- rnorm(20)
n <-length(x)
plot(sort(x), (1:n)/n, type = "s", ylim=c(0,1))
