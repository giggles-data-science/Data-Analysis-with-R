#create an ANOVA object to test whether any group is different from any other group 
#(note it does not specify which group is different)
#specification of a one way analysis of variance is analogous to a regression analysis
#descriptive variable needs to be a factor and not a numeric variable

myANOVA <- aov(df$revenue ~ df$kv_val, data = df)

#print results
myANOVA

#print more detailed summary of results w/ p-values if test has a significant p-value then there's 
#evidence of a group varying from the others
summary(myANOVA)

#post hoc test to see where the differences lie
#if significant p-value then there is a significant difference between groups
TukeyHSD(myANOVA)
plot(TukeyHSD(myANOVA))
coefficients(myANOVA)

#non-parametric test for homogeneity of variance using medians instead of means
#if p value is significant the variance of groups is unequal 
leveneTest(df$revenue, df$kv_val, data = df, center = 'mean')
