# data setup

library(readxl)
library(dplyr)
library(stringr)
library(purrr)

#import the raw data to be analysed. The required file can be requested from the authors

names <- c("time", 
           "ini", 
           paste0("tweet_", 1:40), 
           "age", 
           "sex", 
           "studies", 
           "civilstate", 
           "politics", 
           "access", 
           "email")

raw_data <- read_excel("/path/to/excel data base.xlsx", 
						col_names = names, 
                    	sheet = 2, 
                    	skip = 2) 


#handling doubles in the pseudonymized code

n_occur <- data.frame(table(raw_data$ini))
n_occur <- n_occur[n_occur$Freq > 1,]

for(i in n_occur$Var1){ # this function can only disambiguate the data so far, a small portion of them has to be identified manually 
  vector <- str_detect(raw_data$ini, i)
  index <- min(which(vector == TRUE))
  raw_data$ini[index] <- paste(raw_data$ini[index], "1", sep = "")
}

raw_data$ini[x] <- "alternative names for doubled values" # this function serves to substitute the remaining doubled initials (participants had overlaps in code generation)
raw_data$ini[283] <- "AM1602" # these were the specific lines that had to be replaced in the dataset
raw_data$ini[371] <- "AM1603"
raw_data$ini[398] <- "AM1604"
raw_data$ini[401] <- "AM1605"
raw_data$ini[255] <- "MV1602"
raw_data$ini[287] <- "MV1603"
raw_data$ini[67] <- "MM1602"
raw_data$ini[99] <- "MM1603"


#convert the raw data into long format

descriptive_data <- read_excel("/path/to/excel data base.xlsx",
								sheet = 4)

complementary_data <- gather(raw_data[, c(2:47)], 
                 			key = "tweet", 
                 			value = "rating", 
                 			2:41)

complementary_data$tweet <- factor(complementary_data$tweet, 
                       levels = rev(c(str_replace_all(descriptive_data$X__1, 
                      "Mensaje_", 
                      "tweet_"))))

