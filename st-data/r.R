library(dplyr)

movies <- read.csv("moviesData.csv")
moviesfilter <- filter(movies, genre == "Comedy")

View(moviesfilter)

moviesComDr <- filter(movies, genre=="Comedy"|genre=="Drama")

moviesComDrP <- filter(movies, genre %in% c("Comedy","Drama"))

moviesComIm <- filter(movies, genre=="Comedy"&imdb_rating>=7.5)
