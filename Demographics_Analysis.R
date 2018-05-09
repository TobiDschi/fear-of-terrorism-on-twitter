# demographics in the sample data

library(ggplot2)

# calculate demographic data

sample_data <- raw_data[-c(3:42)]
nrow(sample_data)
mean(sample_data$age)
sd(sample_data$age)
table(sample_data$sex)
table(sample_data$politics)
table(sample_data$civilstate)
table(sample_data$studies)
length(sample_data$studies[sample_data$studies %in% c(3,4,5)])/450

estimate_mode <- function(x) {
  d <- density(x, bw = .67)
  d$x[which.max(d$y)] 
}

# visualize demographic data

ggplot(sample_data, aes(studies)) +
  geom_density(bw = 1)

ggplot(sample_data, aes(age)) +
  geom_density()

ggplot(sample_data, aes(politics)) +
  geom_density(kernel = "g", bw = .67, fill = "black", alpha = 0.3, color = "black", trim = TRUE) +
  geom_vline(aes(xintercept = estimate_mode(politics)), color = "blue") +
  geom_vline(aes(xintercept = 2.7), color = "blue") +
  geom_vline(aes(xintercept = 5), color = "red") +
  theme(legend.position = "none")
