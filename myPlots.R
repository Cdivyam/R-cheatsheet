# Clear R workspace
rm(list = ls() ) 

# Declare a variable to read and store moviesData  
movies <- read.csv("moviesData.csv")

# View the stored data frame 
View(movies)

# View the dimension of the data frame 
dim(movies)
hist(movies$runtime)
hist(movies$runtime,
     main = "Distribution of movies' runtime",
     xlab = "Runtime of movies",
     xlim = c(0,300),
     col = "blue",
     breaks = 13)
genrecount <- table(movies$genre)
View(genrecount)
