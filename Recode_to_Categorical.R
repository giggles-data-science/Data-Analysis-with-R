#note modifying a data frame does not affect any attached version so must detach from r environment first 
detach(data)
data$sex <- factor(data$sex, labels = c("M","F"))
data$graduate <- factor(data$graduate, labels =c("Yes","No"))
attach(data)
summary(data)
