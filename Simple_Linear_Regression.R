#linear regression modeling is useful for describing the relationship between two variables
attach(cars)

#describe speed as a function of distance
#use lm (linear model) for linear regression analysis
# ~ should be read as described by 
#result of lm is encapsulated in a model object and we can use extractor functions, 
#such as 'summary' to obtain the values
reg.mod <- lm(speed ~ dist)

#yi lies on a straight line, Beta regression coefficient is the slope or the increase per unit change in x
#the line intersects the y - axis at the intercept
#parameters can be estimated using the method of least squares
#the empirical slope will deviate from the true values due to sampling variation
summary(reg.mod)

# Call:
# lm(formula = speed ~ dist)

# Residuals:
#     Min      1Q  Median      3Q     Max 
# -7.5293 -2.1550  0.3615  2.4377  6.4179 

# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept)  8.28391    0.87438   9.474 1.44e-12 ***
# dist         0.16557    0.01749   9.464 1.49e-12 ***
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# Residual standard error: 3.156 on 48 degrees of freedom
# Multiple R-squared:  0.6511,	Adjusted R-squared:  0.6438 
# F-statistic: 89.57 on 1 and 48 DF,  p-value: 1.49e-12

#The best fitting straight line is speed = 8.284 + 0.166 x dist
#0.166 increase per unit change in dist

#0 < p value <0.05

#draw the points and add a fitted line
plot(dist, speed)
abline(reg.mod)

#the function 'fitted' returns fitted values or the y-values that would be expected for the given x-values
#acording to the best fitting straight line
fitted(reg.mod)

#         1         2         3         4         5         6         7         8 
#  8.615041  9.939581  8.946176 11.926392 10.932987  9.939581 11.264122 12.588663 
#         9        10        11        12        13        14        15        16 
# 13.913203 11.098554 12.919798 10.601852 11.595257 12.257527 12.919798 12.588663 
#        17        18        19        20        21        22        23        24 
# 13.913203 13.913203 15.900014 12.588663 14.244338 18.217960 21.529312 11.595257 
#        25        26        27        28        29        30        31        32 
# 12.588663 17.224555 13.582068 14.906609 13.582068 14.906609 16.562284 15.237744 
#        33        34        35        36        37        38        39        40 
# 17.555690 20.867041 22.191582 14.244338 15.900014 19.542501 13.582068 16.231149 
#        41        42        43        44        45        46        47        48 
# 16.893420 17.555690 18.880230 19.211366 17.224555 19.873636 23.516123 23.681690 
#        49        50 
# 28.152015 22.357149 

#resid function returns the difference between the fitted value and the observed value
resid(reg.mod)

#           1           2           3           4           5           6 
# -4.61504079 -5.93958139 -1.94617594 -4.92639228 -2.93298684 -0.93958139 
#           7           8           9          10          11          12 
# -1.26412199 -2.58866258 -3.91320318 -0.09855441 -1.91979773  1.39814831 
#          13          14          15          16          17          18 
#  0.40474287 -0.25752743 -0.91979773  0.41133742 -0.91320318 -0.91320318 
#          19          20          21          22          23          24 
# -2.90001408  1.41133742 -0.24433833 -4.21796012 -7.52931161  3.40474287 
#          25          26          27          28          29          30 
#  2.41133742 -2.22455467  2.41793197  1.09339137  3.41793197  2.09339137 
#          31          32          33          34          35          36 
#  0.43771563  2.76225622  0.44431018 -2.86704131 -4.19158191  4.75566167 
#          37          38          39          40          41          42 
#  3.09998592 -0.54250072  6.41793197  3.76885078  3.10658048  2.44431018 
#          43          44          45          46          47          48 
#  1.11976958  2.78863443  5.77544533  4.12636413  0.48387749  0.31830992 
#          49          50 
# -4.15201460  2.64285051 

#put fitted line on plot
plot(dist, speed)
lines(dist, fitted(reg.mod))

#plot w/ residuals connected to the observations on the fitted line
segments(dist, fitted(reg.mod), dist, speed)

#plot of residuals versus fitted values
plot(fitted(reg.mod), resid(reg.mod))

#check if residuals come from a normal distribution
qqnorm(resid(reg.mod))

#fitted values
predict(reg.mod)


#         1         2         3         4         5         6         7         8 
#  8.615041  9.939581  8.946176 11.926392 10.932987  9.939581 11.264122 12.588663 
#         9        10        11        12        13        14        15        16 
# 13.913203 11.098554 12.919798 10.601852 11.595257 12.257527 12.919798 12.588663 
#        17        18        19        20        21        22        23        24 
# 13.913203 13.913203 15.900014 12.588663 14.244338 18.217960 21.529312 11.595257 
#        25        26        27        28        29        30        31        32 
# 12.588663 17.224555 13.582068 14.906609 13.582068 14.906609 16.562284 15.237744 
#        33        34        35        36        37        38        39        40 
# 17.555690 20.867041 22.191582 14.244338 15.900014 19.542501 13.582068 16.231149 
#        41        42        43        44        45        46        47        48 
# 16.893420 17.555690 18.880230 19.211366 17.224555 19.873636 23.516123 23.681690 
#        49        50 
# 28.152015 22.357149 

#expected values with confidence intervals
predict(reg.mod, int = "c")

#         fit       lwr      upr
# 1   8.615041  6.917090 10.31299
# 2   9.939581  8.472965 11.40620
# 3   8.946176  7.307526 10.58483
# 4  11.926392 10.764584 13.08820
# 5  10.932987  9.626909 12.23906

#prediction for new cars with these dist values
predict(reg.mod, int = "p")
#          fit       lwr      upr
# 1   8.615041  2.046715 15.18337
# 2   9.939581  3.427222 16.45194
# 3   8.946176  2.392929 15.49942
# 4  11.926392  5.475837 18.37695
# 5  10.932987  4.454892 17.41108

# Warning message:
# In predict.lm(reg.mod, int = "p") :
#   predictions on current data refer to _future_ responses
 

#Correlation

#correlation coefficient measures the level of association between two random variables 
#ranges from -1 to 1 the extremes equal perfect correlation and zero equals no correlation
#negative when large values of one variable are associated with small values of another
#positive if both variables tend to be large or small simultaneously

cor.test(speed, dist)

# Pearson's product-moment correlation

# data:  speed and dist
# t = 9.464, df = 48, p-value = 1.49e-12
# alternative hypothesis: true correlation is not equal to 0
# 95 percent confidence interval:
#  0.6816422 0.8862036
# sample estimates:
#       cor 
# 0.8068949 
