

library(tidyverse)
library(ggplot2)
setwd("C:/Users/Alton/OneDrive/School/Data Mining TA")
data <- read_csv("weight-height.csv")

# Reduce data size
data <- sample_n(data, size=5000)

# Plot two separate
ggplot(data, aes(x=Height, y=Weight, alpha=0.2)) + 
  geom_point(size=2) +
  theme_bw() + 
  labs(title='Height-Weight Distribution of Humans on Earth')


ggplot(data, aes(x=Height, y=Weight, color=Gender, alpha=0.2)) + 
  geom_point() +
  theme_bw() + 
  labs(title='Height-Weight Distribution of Humans') +
  geom_smooth(method = "lm", se = FALSE) +
  geom_smooth(aes(group = Gender, alpha=.6), method = "lm", se = FALSE)

