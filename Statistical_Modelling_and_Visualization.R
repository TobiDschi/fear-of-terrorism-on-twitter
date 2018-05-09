# plots and statistical modelling

library(lme4)
library(ggplot2)

#plots
valence_plot <- ggplot(full_dataset, aes(Valence_Mean, rating)) +
  geom_jitter(alpha = 0.2, width = 0.1) +
  geom_smooth(method = "lm") 

arousal_plot <- ggplot(full_dataset, aes(Arousal_Mean, rating)) +
  geom_jitter(alpha = 0.2, width = 0.1) +
  geom_smooth(method = "lm")

anger_plot <- ggplot(full_dataset, aes(Anger_Mean, rating)) +
  geom_jitter(alpha = 0.2, width = 0.1) +
  geom_smooth(method = "lm")

fear_plot <- ggplot(full_dataset, aes(Fear_Mean, rating)) +
  geom_jitter(alpha = 0.2, width = 0.1) +
  geom_smooth(method = "lm")

sadness_plot <- ggplot(full_dataset, aes(Sadness_Mean, rating)) +
  geom_jitter(alpha = 0.2, width = 0.1) +
  geom_smooth(method = "lm")

disgust_plot <- ggplot(full_dataset, aes(Disgust_Mean, rating)) +
  geom_jitter(alpha = 0.2, width = 0.1) +
  geom_smooth(method = "lm")

happy_plot <- ggplot(full_dataset, aes(Happiness_Mean, rating)) +
  geom_jitter(alpha = 0.2, width = 0.1) +
  geom_smooth(method = "lm")

valence_plot
arousal_plot
anger_plot
fear_plot
sadness_plot
disgust_plot
happy_plot

#control statistics

model_val   = glmer(rating ~ Valence_Mean  + (1|ini) + (1|tweet), full_dataset, family = "poisson")
model_ar    = glmer(rating ~ Arousal_Mean   + (1|ini) + (1|tweet), full_dataset, family = "poisson")
model_ang   = glmer(rating ~ Anger_Mean  + (1|ini) + (1|tweet), full_dataset, family = "poisson")
model_fear  = glmer(rating ~ Fear_Mean + (1|ini) + (1|tweet), full_dataset, family = "poisson")
model_sad   = glmer(rating ~ Sadness_Mean  + (1|ini) + (1|tweet), full_dataset, family = "poisson")
model_disg  = glmer(rating ~ Disgust_Mean + (1|ini) + (1|tweet), full_dataset, family = "poisson")
model_happy = glmer(rating ~ Happiness_Mean  + (1|ini) + (1|tweet), full_dataset, family = "poisson")

summary(model_val)
summary(model_ar)
summary(model_ang)
summary(model_fear)
summary(model_sad)
summary(model_disg)
summary(model_happy)
