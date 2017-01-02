x <- rnorm(20)
mean(x)
sd(x)
var(x)
median(x)

quantile(x)

deciles <- seq(0,1,0.1)
quantile(x, deciles)

summary(x)
summary(data)

'''R will not skip missing values unless explicitly requested to do so.The summary statistic of a vector with an unknown
value is unknown. You can give the na.rm argument (not available, remove) to request that missing values be removed'''

mean(x, na.rm = T)

#calculate number of missing values 
sum(!is.na(x))
