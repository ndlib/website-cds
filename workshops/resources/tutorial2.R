rm( list=ls() )

library(faraway)
library(tidyverse)
dat <- data.frame(worldcup)

datplot1 <- dat %>% 
  group_by(Team) %>%
  summarize( totpass = sum(Passes) , totshots = sum(Shots))

#plot(datplot1$totshots, datplot1$totpass)

plot1 <- ggplot(datplot1, aes(x=totshots, y=totpass)) + geom_point()

library(ggrepel)

plot1 + geom_text_repel( aes(label=Team) )

datplot2 <- dat %>% group_by(Position) %>% summarize( shots = sum(Shots), 
                                                      saves = sum(Saves),
                                                      passes = sum(Passes),
                                                      tackles = sum(Tackles) )

datplot2

ggplot(datplot2, aes(x=Position, y=shots)) + geom_col()

# gather moves columns

datplot3 <- datplot2 %>% gather(key=move, value=count, shots, saves, passes, tackles)

ggplot(datplot3, aes(x=move, y=count, fill=move)) + geom_bar(stat = 'identity') + facet_wrap( ~ Position)
