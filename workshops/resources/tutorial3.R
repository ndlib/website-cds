summary(dat$Position)
table(dat$Team, dat$Position)

summary(lm(Shots ~ Time + Passes + Position, data=dat))

# create a factor categorizing amount of shooting: 1-low, 2-medium, 3-high, 4-very high

dat$shotlevel <- cut(dat$Shots , c(-Inf, 1, 5, 15, +Inf) )

dat$shotlevel

is.ordered(dat$shotlevel)

min(dat$shotlevel)

dat$shotlevel <- cut(dat$Shots , c(-Inf, 1, 5, 15, +Inf) , ordered = TRUE )
