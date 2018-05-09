# calculation of the dataset
# rwa_data, descriptive_data, and complementary_data are defined in "Data_Setup.R"

library(dplyr)
library(readxl)
library(purrr)

# data of emotive norms

norm_data <- read.csv("/path/to/stadthagen_norm_data.csv") # can be downloaded as supplementary material to the study of Stadthagen-Gonzalez et al. (2017)

frases <- read_excel("/path/to/tokenizedphrases", sheet = 1, col_names = "phrase") #the phrases where tokenized by hand. You can request access to the tokenized or crude version of the analyse Tweets from the authors. 
frases$Valence_Mean <- 0
frases$Arousal_Mean <- 0
frases$Anger_Mean <- 0
frases$Fear_Mean <- 0
frases$Sadness_Mean <- 0
frases$Disgust_Mean <- 0
frases$Happiness_Mean <- 0
frases$tweet <- paste("tweet_", 1:40, sep = "")

# calculation algorithm

square <- function(x = NULL){
  x^2
}

emotion_values <- function(emotion){
  
  apply_index_emotion <- function(x = NULL, column = emotion){
    norm_data[,column][x == TRUE]
  }
  
  override_emotion <- function(value, position, column = emotion){
    frases[position,column] <<- value 
  }
  
  for(i in 1:nrow(frases)){
    map(frases$tokenphrase[i], str_detect, as.character(norm_data$Word)) %>%
      unlist() %>%
      apply_index_emotion() %>%
      square() %>%
      mean() %>%
      sqrt() %>%
      override_emotion(i)
  }
}1

#execution

emotion_values("Arousal_Mean")
emotion_values("Anger_Mean")
emotion_values("Fear_Mean")
emotion_values("Sadness_Mean")
emotion_values("Disgust_Mean")
emotion_values("Happiness_Mean")
emotion_values("Valence_Mean")

#complete full dataset

full_dataset <- left_join(complementary_data, frases, by = "tweet") #complementary data was defined under "data setup"
