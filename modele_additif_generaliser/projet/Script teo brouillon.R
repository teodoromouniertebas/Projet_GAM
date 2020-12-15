

#Library
library(readr)
train <- read_csv("projet/data_train.csv")
View(train)



#Manipulation de base:
library(tidyverse)

        #On réordonne les colonne pour avoir la variable job au début:

train$Date <- as.Date(train$START_TIME)
train$Time <- format(as.POSIXct(train$START_TIME), format="%H:%M:%S")

train <- train %>% select(1,5,-2,6,7,3,4)
View(train)

        #)On observes les données :
names(train)
str(train)
summary(train)


#-------------------------------#Création de nouvel variables:--------------------------------------------









#-------------------------------#Statistiques descriptives sur la base créé:--------------------------------
library(summarytools)
summarytools::descr(train, style = "rmarkdown")
view(descr(train))

library(DataExplorer)
DataExplorer::plot_histogram(train)

library(explore)
explore(train)































