#box and whiskers plot
#box creates quartile hinges, displays the median, and whiskers (show the largest or smallest 
#observation that falls within a distance of 1.5 times the box size from the nearest hinge

#a layout with two plots side by side is specified using mfrow or multiframe, rowwise
#can also do mfcol to plot columnwise

#it is necessary to reset the layout parameter to c(1,1) at the end unless you also want two plots side by side subsequently

par(mfrow=c(1,2))
boxplot(data)
boxplot(log(data)
par(mfrow =c(1,1))


#Parallel Boxplots

#height described by student's current grade in school
boxplot(height ~ grade)

#or

#height for fifth graders paralle to height for eighth graders
boxplot(height.fifth, height.eighth)

        
#Stripcharts
#if the boxplot has a small interquartile range it may be more useful to plot the raw data points

#mex setting reduces the interline distance
#mar reduces the number of lines that surround the plot region
#stack stacks identical values so they are more visible
#jitter offsets points a random amount vertically and adjust the jitter to make it clearer
attach(iris)
opar <- par(mfrow=c(2,2), mex = 0.8, mar = c(3,3,2,1)+.1)
stripchart(Petal.Width ~ Species)
stripchart(Petal.Width ~ Species, method = "stack")
stripchart(Petal.Width ~ Species, method = "jitter")
stripchart(Petal.Width ~ Species, method = "jitter", jitter = .03)
par(opar)
