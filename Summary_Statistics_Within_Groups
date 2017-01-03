attach(iris)

#We can compute the summary statistics within particular groups of interest
#Let's compute the mean sepal length for each iris species

tapply(Sepal.Length, Species, mean)
#    setosa versicolor  virginica 
#     5.006      5.936      6.588 

#now the standard deviation
tapply(Sepal.Length, Species, sd)
#    setosa versicolor  virginica 
# 0.3524897  0.5161711  0.6358796 

#now the length
tapply(Sepal.Length, Species, length)
#    setosa versicolor  virginica 
#        50         50         50 

#nicer display

xbar <- tapply(Sepal.Length, Species, mean)
s <- tapply(Sepal.Length, Species, sd)
n <- tapply(Sepal.Length, Species, length)
cbind(mean = xbar, std.dev = s, n = n)

#            mean   std.dev  n
# setosa     5.006 0.3524897 50
# versicolor 5.936 0.5161711 50
# virginica  6.588 0.6358796 50


#aggregate functions to compute summary statistics for more variables; works on an entire data frame and presents results
#as a data frame

aggregate(iris[c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")], list(Species = iris$Species), mean)
#      Species Sepal.Length Sepal.Width Petal.Length Petal.Width
#1     setosa        5.006       3.428        1.462       0.246
#2 versicolor        5.936       2.770        4.260       1.326
#3  virginica        6.588       2.974        5.552       2.026

#by function computes summary statistics for a sub data frame
by(iris, iris["Species"], summary)

#Species: setosa
#  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
# Min.   :4.300   Min.   :2.300   Min.   :1.000   Min.   :0.100  
# 1st Qu.:4.800   1st Qu.:3.200   1st Qu.:1.400   1st Qu.:0.200  
# Median :5.000   Median :3.400   Median :1.500   Median :0.200  
# Mean   :5.006   Mean   :3.428   Mean   :1.462   Mean   :0.246  
# 3rd Qu.:5.200   3rd Qu.:3.675   3rd Qu.:1.575   3rd Qu.:0.300  
# Max.   :5.800   Max.   :4.400   Max.   :1.900   Max.   :0.600  
#       Species  
# setosa    :50  
# versicolor: 0  
# virginica : 0  
                
                
                
#------------------------------------------------------------ 
#Species: versicolor
#  Sepal.Length    Sepal.Width     Petal.Length   Petal.Width          Species  
# Min.   :4.900   Min.   :2.000   Min.   :3.00   Min.   :1.000   setosa    : 0  
# 1st Qu.:5.600   1st Qu.:2.525   1st Qu.:4.00   1st Qu.:1.200   versicolor:50  
# Median :5.900   Median :2.800   Median :4.35   Median :1.300   virginica : 0  
# Mean   :5.936   Mean   :2.770   Mean   :4.26   Mean   :1.326                  
# 3rd Qu.:6.300   3rd Qu.:3.000   3rd Qu.:4.60   3rd Qu.:1.500                  
# Max.   :7.000   Max.   :3.400   Max.   :5.10   Max.   :1.800                  
#------------------------------------------------------------ 
#Species: virginica
#  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
# Min.   :4.900   Min.   :2.200   Min.   :4.500   Min.   :1.400  
# 1st Qu.:6.225   1st Qu.:2.800   1st Qu.:5.100   1st Qu.:1.800  
# Median :6.500   Median :3.000   Median :5.550   Median :2.000  
# Mean   :6.588   Mean   :2.974   Mean   :5.552   Mean   :2.026  
# 3rd Qu.:6.900   3rd Qu.:3.175   3rd Qu.:5.875   3rd Qu.:2.300  
# Max.   :7.900   Max.   :3.800   Max.   :6.900   Max.   :2.500  
#       Species  
# setosa    : 0  
# versicolor: 0  
# virginica :50  
