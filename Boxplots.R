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
