library(faraway)

dat <- data.frame(worldcup)

head(dat)
str(dat)
summary(dat)

dim(dat)

numrows <- dim(dat)[2]

numrows

dat[ 17, 3 ]

dat[1:6, 1:5]

dat['Alonso', ]

dat[, 'Team']

dat$Player <- rownames(dat)

dat <- dat[ , c(8, 1:7) ]

library(tidyverse)

dat.mostshotsdat <- dat %>% group_by(Team) %>% summarize( mostshots=max(Shots) )

dat %>% group_by(Team) %>% summarize( mostshots=max(Shots), mostshotsPlayer = which.max(Shots) )
