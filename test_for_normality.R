#Test your data for normality.

#initial view of data
hist(df$revenue)

#visualy inspect if data points have a linear relationship
qqnorm(df$revenue)

#add a line to better visualize linearity
qqline(df$revenue)

#null hypothesis states data is normally distributed. if p-value is significant should reject null hypothesis.
shapiro.test(df$revenue) 
