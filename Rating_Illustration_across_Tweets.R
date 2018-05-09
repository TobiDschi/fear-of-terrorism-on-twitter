library(ggplot2)
library(car)

#illustration of means of ratings across tweets

qqPlot(descriptive_data$Mean) #means are normally distributed 

ggplot(descriptive_data, aes(Mean)) +
  geom_density()

ggplot(complementary_data, aes(tweet, rating)) +
  geom_jitter(width = 0.2, alpha = 0.1) +
  stat_summary(geom = "errorbar", col = "red", fun.data = mean_se) +
  theme(axis.text.x = element_text(angle = 90))
