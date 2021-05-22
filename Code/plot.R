ggplot() + 
  geom_line(data = creditcard, aes(y=Amount, x=Time), color = "blue") +
  ggtitle("Amount") + 
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

ggplot() + 
  geom_density(data = creditcard[creditcard$Class == 0,], aes(x=Amount), color = "blue", fill = "blue", alpha = 0.12) +
  geom_density(data = creditcard[creditcard$Class == 1,], aes(x=Amount), color = "red", fill = "red", alpha = 0.12) + 
  scale_x_log10() +
  annotation_logticks() +
  ggtitle("Amount vs Class Density") + 
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))


