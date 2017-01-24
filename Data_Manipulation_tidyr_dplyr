#manipulate data with tidyr & dplyr

library(tidyr)
library(dplyr)

#store iris as a df
iris.df <- as.data.frame(iris)

#create a new row column to uniquely identify observations
iris.df$row <- 1:nrow(iris.df)

#create new df with gathered attributes in one column and their respective values in another
#do not gather Species or row columns
irisNew <- iris.df %>% gather(attribute, value, -Species, -row)

#view first 6 and last 6 rows of gathered df
head(irisNew)

#Species row    attribute value
#1  setosa   1 Sepal.Length   5.1
#2  setosa   2 Sepal.Length   4.9
#3  setosa   3 Sepal.Length   4.7
#4  setosa   4 Sepal.Length   4.6
#5  setosa   5 Sepal.Length   5.0
#6  setosa   6 Sepal.Length   5.4

tail(irisNew)

#      Species row   attribute value
#595 virginica 145 Petal.Width   2.5
#596 virginica 146 Petal.Width   2.3
#597 virginica 147 Petal.Width   1.9
#598 virginica 148 Petal.Width   2.0
#599 virginica 149 Petal.Width   2.3
#600 virginica 150 Petal.Width   1.8

#gather only Petal.Length and Petal.Width 
irisNew <- iris.df %>% gather(attribute, value, Petal.Length:Petal.Width)

#view first 6 and last 6 rows of gathered df
head(irisNew)
#Sepal.Length Sepal.Width Species row    attribute value
#1          5.1         3.5  setosa   1 Petal.Length   1.4
#2          4.9         3.0  setosa   2 Petal.Length   1.4
#3          4.7         3.2  setosa   3 Petal.Length   1.3
#4          4.6         3.1  setosa   4 Petal.Length   1.5
#5          5.0         3.6  setosa   5 Petal.Length   1.4
#6          5.4         3.9  setosa   6 Petal.Length   1.7

tail(irisNew)
#    Sepal.Length Sepal.Width   Species row   attribute value
#295          6.7         3.3 virginica 145 Petal.Width   2.5
#296          6.7         3.0 virginica 146 Petal.Width   2.3
#297          6.3         2.5 virginica 147 Petal.Width   1.9
#298          6.5         3.0 virginica 148 Petal.Width   2.0
#299          6.2         3.4 virginica 149 Petal.Width   2.3
#300          5.9         3.0 virginica 150 Petal.Width   1.8

#make newly transformed long df into a wide df again using Spread function (uniquely identified observations needed)
irisSpread <- irisNew %>% spread(attribute, value)

#view first 6 and last 6 rows of gathered df
head(irisSpread)
#Sepal.Length Sepal.Width Species row Petal.Length Petal.Width
#1          4.3         3.0  setosa  14          1.1         0.1
#2          4.4         2.9  setosa   9          1.4         0.2
#3          4.4         3.0  setosa  39          1.3         0.2
#4          4.4         3.2  setosa  43          1.3         0.2
#5          4.5         2.3  setosa  42          1.3         0.3
#6          4.6         3.1  setosa   4          1.5         0.2
tail(irisSpread)
#    Sepal.Length Sepal.Width   Species row Petal.Length Petal.Width
#145          7.6         3.0 virginica 106          6.6         2.1
#146          7.7         2.6 virginica 119          6.9         2.3
#147          7.7         2.8 virginica 123          6.7         2.0
#148          7.7         3.0 virginica 136          6.1         2.3
#149          7.7         3.8 virginica 118          6.7         2.2
#150          7.9         3.8 virginica 132          6.4         2.0

#rearrange columns in df
irisSpread <- irisSpread[,c(1,2,5,6,3,4)]

#view first 6 rows of df
head(irisSpread)
#Sepal.Length Sepal.Width Petal.Length Petal.Width Species row
#1          4.3         3.0          1.1         0.1  setosa  14
#2          4.4         2.9          1.4         0.2  setosa   9
#3          4.4         3.0          1.3         0.2  setosa  39
#4          4.4         3.2          1.3         0.2  setosa  43
#5          4.5         2.3          1.3         0.3  setosa  42
#6          4.6         3.1          1.5         0.2  setosa   4

#sort by row
irisSpread <- irisSpread[order(irisSpread$row), ]

#view first 6 rows of df
head(irisSpread)
#   Sepal.Length Sepal.Width Petal.Length Petal.Width Species row
#36          5.1         3.5          1.4         0.2  setosa   1
#19          4.9         3.0          1.4         0.2  setosa   2
#10          4.7         3.2          1.3         0.2  setosa   3
#6           4.6         3.1          1.5         0.2  setosa   4
#32          5.0         3.6          1.4         0.2  setosa   5
#51          5.4         3.9          1.7         0.4  setosa   6

#drop row column
irisSpread <- irisSpread[,-6]

#view first 6 rows of df
head(irisSpread)
 Sepal.Length Sepal.Width Petal.Length Petal.Width Species
#36          5.1         3.5          1.4         0.2  setosa
#19          4.9         3.0          1.4         0.2  setosa
#10          4.7         3.2          1.3         0.2  setosa
#6           4.6         3.1          1.5         0.2  setosa
#32          5.0         3.6          1.4         0.2  setosa
#51          5.4         3.9          1.7         0.4  setosa
