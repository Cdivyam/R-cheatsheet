# R use case
### R is used for statistical modelling, Machine Learning and Data Science Applications
# Difference Between R and R studio
R|Rstudio
---|---
R is programming language|Rstudio is an IDE for R(just like vscode, sublime, etc)
# Installation
### [R for windows 4.0.4](https://cran.r-project.org/bin/windows/base/R-4.0.4-win.exe)
### [Rstudio for windows](https://download1.rstudio.org/desktop/windows/RStudio-1.4.1106.exe)
# Rstudio
![](Rstudio-explained.jpg)
# Multiply
### `2.1*5`
# Divide
### `2.1*5/3`
# Addition
### `2+5`
# Variables
### `a <- 2+3` or `a = 2+3`
>#### Note `<-` and `=` differ in subtle ways but both can be used as assignment operators in our case
# Subtract
### `a-0.16`
# Power
### `(a)^0.5`
# Square Root
### `sqrt(a)`
# Exponential (e)
### `exp(1)`
# Natural Log (Log to base e)
### `log(exp(1))`
# Log to Base 10
### `log10(10^5)`
# Log to Base n
```R
> n = 10
> log(10^5, n)
[1] 5
```
# Pi (pi)
```R
> pi
[1] 3.141593
```
# Comments
### `#` is comment.
### Use `Ctrl+Shift+c` to comment the whole line.
```
> # This is a comment
```
# Basic Data Types
| Data Type | Values |
|-----------|--------|
| Numeric | Set of all real numbers |
| Integer | Set of all  integers Z |
| Logical | TRUE and FALSE |
| Character | "a", "b", "c", …, "@", "#", "$", …., "1", "2", …etc |
## 1. Numeric Data Type
```R
> v=2.53
> print(class(v))
[1] "numeric"
```
## 2. Integer Data Type
```R
> print(class(v))
[1] "interger"
```
## 3. Logical Data Type
```R
> v = TRUE
> print(class(v))
[1] "logical"
```
## 4. Complex Data Type
```R
> m=4+10i
> print(class(m))
[1] "4+10i"
```
# R-objects
||R-objects|
|---|---|
|1|Vectors|
|2|Lists|
|3|Matrices|
|4|Arrays|
|5|Factors|
|6|Data Frames|
## 1.1. Vectors - Homogenous Data
### Like arrays in C
### Vector must be created using concatenation function: c(parameters)
```R
> s <- c(1,2,3)
> print(s)
[1] 1 2 3

> branch=c('IT','CMPN','MECH')
> print(branch)
[1] "IT" "CMPN" "MECH"
```
## 1.2 Vectors using Sequence (seq)
```R
> z = seq(-1, 2, 0.5)
> z
[1] -1.0 -0.5 0.0 0.5 1.0 1.5 2.0
```
### Length of vectors
```R
> length(z)
[1] 7
```
># Plotting Graph (plot)
### Plot single variable to itself (y=x graph)
```R
> test = c(1,2,3)
> plot(test)
```
### A random Plot
```R
> x = seq(-2, 2, 1)
> x
[1] -2 -1  0  1  2
> y = sin(x)
> plot(x, y, type="l")
```
### A Better Sine curve plot
```R
> x = seq(-2*pi, 2*pi, 1)
> x
 [1] -6.2831853 -5.2831853 -4.2831853 -3.2831853 -2.2831853 -1.2831853 -0.2831853  0.7168147  1.7168147
[10]  2.7168147  3.7168147  4.7168147  5.7168147
> y = sin(x)
> plot(x, y, type="l")
```
### Best Sine curve plot
```R
> x = seq(-2*pi, 2*pi, 0.01)
> y = sin(x)
> plot(x, y, type="l")
```
### Changing Color and Plot Type - plot(_x_, _y_, _type=_...)
### We can change the plot type with the argument type. It accepts the following strings and has the given effect.
```BASH
"p" - points
"l" - lines
"b" - both points and lines
"c" - empty points joined by lines
"o" - overplotted points and lines
"s" and "S" - stair steps
"h" - histogram-like vertical lines
"n" - does not produce any points or lines
```
[More on Plotting](#plotting-bar-chart)
## 2. List - heterogenous data
```R
> n<- list(TRUE,123L,2.54,"bac",'f')
> n
> list1 <- list(c(2,5,3),21.3,'Hello')
> list1
```
>### Difference Between Vectors and List
Vectors|List
---|---
A vector is a single dimensional, homogenous data structure in R| List is a multi dimensional, heterogenous data structure in R
vector is not recursive| Lists are recursive
vector is one-dimensional object| list is a multidimensional object

[More Operations on Lists](#more-operations-on-lists)
## 3. Arrays: array()
```R
> a <- array(data = 1:8, dim= c(2,2))
> a
     [,1] [,2]
[1,]    1    3
[2,]    2    4
```
## 4. Matrices: matrix()
```R
> b <- matrix(data = 1:6, nrow=2, ncol=3)
> b
```
## Factor: Encodes a vector of unique elements (levels) from the given data vector.
### To create a factor, first create a vector
```R
> m  <-  c("Male","Female","Male","Female","Male","Female","Male","Female")
```
[More Operations on Matrices](#more-operations-on-matrices)
### Then make a factor using factor()
```R
> f <- factor(m)
> f
> levels(f) 
> unclass(f)
```

## 6. Data Frames
### Making Dataframe from Multiple vectors
```R
> names <- c("Mahi","Sourav","Azhar", "Sunny","Pataudi","Dravid") 
> names
> played <- c(45, 49, 47, 47, 40, 25)
> won <- c(22, 21, 14, 9, 9, 8)
> lost <- c(12, 13, 14, 8, 19, 6)
> Y <- c(2012, 2004, 2000, 1980, 1965, 2008)
> captaincy <- data.frame(names,Y, played,won,lost)
```
### Selecting A column in dataframe
```R
> View(captaincy)
> captaincy$names
> captaincy$won
> captaincy$played
> ratio = captaincy$won / captaincy$played
> ratio
```
### Check Dimensions
```R
> dim(capataincy)
```
### Adding a column in DataFrame
```R
> captaincy$victory = ratio
```
### Mean, median, mode
```R
> mean(captaincy$played)
> median(captaincy$played)
> mode(captaincy$played)
```
## Indexing in DataFrames
### Extract a row
```R
> captaincy[3,]
```
### Extract a column
```R
> captaincy[,3]
```
### ERxtract columns using numeric indexing
```R
> captaincy[3]
```
### Extract columns using name indexing
```R
> captaincy["names"]
```
### Extract multiple columns using name indexing
```
> captaincy[c("names", "won")]
```
### Extract more than one rows
```R
> captaincy[c(2,3), ]
or
> captaincy[2:3,]
```
### Extract rows using logical indexing
```R
> captaincy[captaincy$played==25,]
```
### Extracting a single value in a column, row
```R
> captaincy[[4]][3]
```
### Creating a New DataFrame as a subset of actual dataframe
```R
> subdata <- subset(captaincy, victory>0.3, select = c("names", "played", "won"))
> subdata
   names played won
1   Mahi     45  22
2 Sourav     49  21
6 Dravid     25   8
> print(class(subdata))
[1] "data.frame"
```
>## Various Plots on above DF
### Simple Plot on Captaincy year vs Ratio
```R
> plot(captaincy$Y, ratio)
```
### Plot with Characters on X axis and Numeric Data on Y axis
```R
> plot(captaincy$names, captaincy$played)
```
### The above plot will give error when the vector has character.
### To workaround that you should convert the vector to a factor.
```R
> plot(factor(captaincy$names), captaincy$played)
```
## Write DataFrame to a file
```R
Syntax - 
    write.csv(dataframe, file=output_file_path)

> write.csv(captaincy, file="NewCaptaincy.csv")
```
### Write w/o row numbers
```R
> write.csv(captaincy, file="NewCaptaincy.csv", row.names = FALSE)
```
# More operations on Matrices
## Create Matrices using some values from dataFrame - as.matrix()
```R
> subdata = captaincy[1:3, c("played", "won", "lost")]
> subdata
  played won lost
1     45  22   12
2     49  21   13
3     47  14   14
> matrixA <- as.matrix(subdata)
> matrixA
  played won lost
1     45  22   12
2     49  21   13
3     47  14   14
```
## Create Matrices using Vectors
```R
> values <- c(1,0,0,0,1,0,0,0,1)
> matrixB <- matrix(values, nrow=3, ncol=3, byrow = TRUE)
> matrixB
     [,1] [,2] [,3]
[1,]    1    0    0
[2,]    0    1    0
[3,]    0    0    1
```
## Basic Operations on Matrices
### Addition
```R
> matrixA + matrixB
  played won lost
1     46  22   12
2     49  22   13
3     47  14   15
```
### Subtraction
```R
> matrixA - matrixB
  played won lost
1     44  22   12
2     49  20   13
3     47  14   13
```
### Division
```R
> matrixA / matrixB
  played won lost
1     45 Inf  Inf
2    Inf  21  Inf
3    Inf Inf   14
```
### Element-wise multiplication
```R
> matrixA * matrixB
  played won lost
1     45   0    0
2      0  21    0
3      0   0   14
```
### Matrix Multiplication
```R
> matrixA %*% matrixB
  [,1] [,2] [,3]
1   45   22   12
2   49   21   13
3   47   14   14
```
### Transpose
```R
> t(matrixA)
```
### Determinant
```R
> det(matrixA)
```
### Inverse
```R
> solve(matrixA)
```
### Sum of a Matrix
*Run as Rscript*
```R
startTime <- Sys.time()
totalSum <- 0
for(i in 1:3){
    for(j in 1:3){
        totalSum <- totalSum + matrixA[i,j]
    }
}
print(totalSum)
endTime <- Sys.time()
print(endTime - startTime)
```
## Show list of Available DataFrames
```R
> data()
```
# Packages
## Checking for installed packages
```R
> library()
```
## Installing Packages
```R
> install.packages("MASS")
> install.packages("ggplot2")
```
## Using installed packages
```R
> library(MASS)
> fractions(3/4)
[1] 3/4
> 3/4
[1] 0.75
```
# Working Directory
```R
> getwd() #GetWorkingDirectory
> setwd() #SetWorkingDirectory
```
# Importing Data from different types of File
## CSV
```R
> captaincyOne <- read.csv("CaptaincyData.csv")
> captaincyTwo <- read.csv("CaptaincyData2.csv")
```
## Text Data
```R
> txtdata <- read.table("CaptaincyData.txt")
```
## XML Data
### First Install `XML` packages, then use the package to get dataframe from XML
```R
> install.packages("XML")
> library("XML")
> xmldata <- xmlToDataFrame("CaptaincyData.xml")
> View(xmldata)
```
## Excel Data
### First Install the packages - `readxl` and `Rcpp`
```R
> install.packages("readxl")
> install.packages("Rcpp")
> library(readxl)
> CaptaincyData <- read_excel("CaptaincyData.xlsx")
```
## JSON Data
### First Install the package - `rjson`
```R
> install.packages("rjson")
> library("rjson")
> result <- fromJSON(file = "CaptaincyData.json")
> View(result)
> result
> jdf = as.data.frame(result)
> View(jdf)
```
## Merge 2 Dataframes
```R
> captaincyOne <- merge(captaincyOne, captaincyTwo, by="names")
> View(captaincyOne)
```
# More Operations on Lists
## Creating a list
```R
subData <- captaincy[1:3, c("played", "won", "lost")] #DataFrame
matrixA <- as.matrix(subData)
myVector <- c(1:5)
mylist <- list(captaincy, matrixA, myVector)
```
## Creating a named list
```R
names(mylist) <- c("Dataframe", "matrix", "vector")
```
## Selecting Data from list
```R
mylist$Dataframe # Using Name
mylist[2]        # Using Index
mylist[[2]][,3]  # Indexing 3 column of 2nd object
```
## Merging 2 lists using concat
```R
listsimple <- c("One", "Two", "Three")
merged.list <- c(mylist, listsimple)
merged.list
```
# Plotting Bar Chart
### You know what a bar chart is
## Simple Barplot
```R
barplot(movies$imdb_rating) # all 600 instances
moviesSub <- movies[1:20,] # only 20 instances
barplot(moviesSub$imdb_rating)
```
## Bar Plot Arguments
```R
barplot(moviesSub$imdb_rating,
        xlab = "Movies",
        ylab = "IMDB RATING",
        col = "blue",
        ylim = c(0,10),
        main = "Movies' IMDB raing")
```
## Show names on X-axis
```R
barplot(moviesSub$imdb_rating,
        xlab = "Movies",
        ylab = "IMDB RATING",
        col = "blue",
        ylim = c(0,10),
        main = "Movies' IMDB raing",
        names.arg = moviesSub$title) # Only a few names visible
barplot(moviesSub$imdb_rating,
        xlab = "Movies",
        ylab = "IMDB RATING",
        col = "blue",
        ylim = c(0,10),
        main = "Movies' IMDB raing",
        names.arg = moviesSub$title,
        las = 2) # Names perpendicular to X-axis, all visible
```
# Scatter Plot - simple plot
## Plot - Already seen this
```R
plot(x = movies$imdb_rating,
     y = movies$audience_score,
     main = "IMDB rating vs Audience score",
     xlab = "IMDB rating",
     ylab = "Audience Score",
     xlim = c(0,10),
     ylim = c(0,100),
     col = "blue")
```
## Correlation Coefficient
### The correlation coefficient is a statistical measure of the strength of the relationship between the relative movements of two variables. The values range between -1.0 and 1.0. A correlation of -1.0 shows a perfect negative correlation, while a correlation of 1.0 shows a perfect positive correlation.
```R
cor(movies$imdb_rating, movies$audience_score)
```
# Plotting Histograms
### Histogram is a visual representation of the distribution of the dataset
### Used to plot the frequency of score in a continuous dataset
## Basic Histogram
```R
> movies <- read.csv("moviesData.csv")
> hist(movies$runtime)
```
## Customized histogram
```R
> hist(movies$runtime,
     main = "Distribution of movies' runtime",
     xlab = "Runtime of movies",
     xlim = c(0,300),
     col = "blue")
```
## Make Histogram Finer or coarser by modifying `breaks` argument
### Try changing the breaks argument as 1000, 600, 300, 100, 15, 13, 8, 4, 3, 1
```R
> hist(movies$runtime,
     main = "Distribution of movies' runtime",
     xlab = "Runtime of movies",
     xlim = c(0,300),
     col = "blue",
     breaks = 4)
```
# Plotting Pie Chart
### A circular chart divided into wedge-like sectors, illustrating proportion
### Total value of Pie is 100%
## Simple Pie Chart
```R
genrecount <- table(movies$genre)
View(genrecount)
pie(genrecount)
```
## Custom Pie Chart arguments
```R
pie(genrecount,
    main="Proportion of movies' genre",
    border="blue",
    col="orange")
```
#### Save the Plots
# More on Basic Plotting
## Sine and Cosine Curve on same plot
```R
plot(x, sin(x),
     main = "Two graphs in one plot",
     ylab = "",
     type = "l",
     col = "blue")
lines(x, cos(x),
      col = "red")
legend("topleft",
       c("sin(x)", "cos(x)"),
       fill = c("blue", "red"))
```
# Grammar of Graphics (ggplot2)
## Installation
```R
install.packages("ggplot2")
```
## Basic Plot on movies dataset using ggplot
```R
library(ggplot2) # import package
movies <- read.csv("moviesData.csv") # read csv
ggplot(data = movies, # dataset to use
       mapping = aes(x=critics_score, # mapping used to apply the mapping
                     y=audience_score)) + # aes used to specify the mapping
  geom_point() # draw geometric points defined by x and y co-ordinates
```
# Aesthetic Plotting
### It is a visual property
### Includes lines, points, symbols, colors and position
### It is used to add customization to our plots
## Scatter plot by using genre to color
```R
# import package
library(ggplot2)

# read csv
movies <- read.csv("moviesData.csv")
View(movies)

ggplot(data = movies,
       mapping = aes(x=critics_score,
                     y=audience_score,
                     color = genre)) +
  geom_point()
```
## Bar Plot
```R
z = factor(movies$mpaa_rating)
levels(z)
ggplot(data = movies,
       mapping = aes(x=mpaa_rating)) + 
  geom_bar()
```
#### *Seems like ggplot can plot character on barplot*
## Give labels
```R
ggplot(data = movies,
       mapping = aes(x=mpaa_rating)) + 
  geom_bar() +
  labs(y="Rating Count",
       title="Count of mpaa ratings")
```
## Give distribution by some other attribute
```R
ggplot(data = movies,
       mapping = aes(x=mpaa_rating,
                     fill = genre)) + 
  geom_bar() +
  labs(y="Rating Count",
       title="Count of mpaa ratings")
```
## Histogram
```R
ggplot(data = movies,
       mapping = aes(x=runtime)) + 
  geom_histogram() +
  labs(x="Runtime of Movies",
       title="Distribution of Runtime")
```
## Box plot - ggplot(_data = ..., mapping = aes(...)_) + `geom_boxplot()`
## Line Plot - ggplot(_data = ..., mapping = aes(...)_) + `geom_line()`

# Dplyr
## Installation
```R
install.packages("dplyr")
```
## Some Deplyr functions
Funtions|Use
---|---
filter|to select cases based on their values
arrange|to order the cases
select|to select variables based on their names
mutate|to add new variables that are functions of existing variables
summarise|to condense multiple values to a single value
### All these funtions can be combined by `group_by` function. It allows us to perform any operation by a group
## Filter
```R
library(dplyr)

movies <- read.csv("moviesData.csv")
moviesfilter <- filter(movies, genre == "Comedy")

View(moviesfilter)

moviesComDr <- filter(movies, genre=="Comedy"|genre=="Drama")

moviesComDrP <- filter(movies, genre %in% c("Comedy","Drama"))

moviesComIm <- filter(movies, genre=="Comedy"&imdb_rating>=7.5)
```
## Arrange
```R
moviesComImD <- arrange(movies, desc(imdb_rating))

moviesGenIm <- arrange(movies, genre, imdb_rating)
```
## Select
```R
moviesTGI <- select(movies, title, genre, imdb_rating)

moviesTHT <- select(movies, title, starts_with("thtr"))
```
## Rename
```R
moviesR <- rename(movies, rel_year = "thtr_rel_year")
```
## Mutate
```R
moviesLess <- select(movies, title:audience_score)

moviesMu <- mutate(moviesLess, CriAUD = critics_score - audience_score)
```
## Summarise
### Can give mean, median, mode or other important parameters
```R
summarise(movies, mean(imdb_rating))
```
### summarise with groupby
#### you won't use `summarise()` just to take the mean, median mode or anything else on a single variable. It is used on a grouped data frame for specific calculations
```R
groupMovies <- group_by(movies, genre)

summarise(groupMovies, mean(imdb_rating))
```
### filter -> groupby -> summarise
```R
dramaMov <- filter(movies, genre == "Drama")

gr_dramaMoc <- group_by(dramaMov,
                        mpaa_rating)
summarise(gr_dramaMoc, mean(imdb_rating))
```
# Pipe Operator `%>%`
### Used to reduce no. of data frames
## We can write cos(sin(pi)) [cos of sin of pi] as
```R
pi %>% sin() %>% cos()
```
## filter `%>%` groupby `%>%` summarise
```R
movies %>% filter(genre == "Drama") %>% group_by(mpaa_rating) %>% summarise(mean(imdb_rating))
```
## mutate `%>%` ggplot 
```R
movies %>% mutate(diff = audience_score - critics_score) %>% ggplot(mapping = aes(x=genre, y=diff)) + geom_boxplot()
```
## group_by `%>%` summarise
```R
movies %>% group_by(genre, mpaa_rating) %>% summarise(num = n())
# n() gives the current group size
```
# Functions in R
## Creating a function
```R
z <- function(x,y){ x+y}
z(11,22)
```
# A few keyboard shortcuts
Action|Shortcut
---|---
Run(on console window)|Enter
Run single line on on source window|Ctrl + Enter
Clear Console window|Ctrl + L
Type `<-`| Alt + - 