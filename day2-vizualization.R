getwd()

library(tidyverse)
library(gapminder)
library(scales)

data(gapminder)

p <- ggplot(gapminder)

p2 <- ggplot(data = gapminder,
             mapping = aes(x = gdpPercap,
                           y = lifeExp,
                           group = continent))+
  geom_point(aes(color = pop))+
  geom_smooth(method = "lm")+
  scale_x_log10()

p2

p3 <- ggplot(data = gapminder,
             mapping = aes(x = year,
                           y = gdpPercap))
p3 + 
  geom_line(color = "gray70", aes(group = country)) +
  geom_smooth(size = 1.1, method = "loess", se = F) +
  scale_y_log10(labels = scales::dollar) +
  facet_wrap(~ continent, ncol = 5) +
  labs(x = "Year",
       y = "GDP per capita",
       title = "GDP per capita on Five Continents")







