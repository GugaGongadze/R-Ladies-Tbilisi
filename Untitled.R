getwd()

library(tidyverse)
library(gapminder)

data(gapminder)

p <- ggplot(gapminder)

p2 <- ggplot(data = gapminder,
             mapping = aes(x = gdpPercap,
                           y = lifeExp,
                           group = continent))+
  geom_point(aes(color = continent))+
  geom_smooth(method = "lm")+
  scale_x_log10()

p2
