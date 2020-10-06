#Performing a simple linear regression and making predictions using a fitted model

library(ggplot2)
data(Orange)

lm.fit = lm(circumference ~ age, data = Orange)
summary(lm.fit)

attach(Orange)

plot(age, circumference)

abline(lm.fit, lwd = 3, col='green')

prediction = data.frame(age=c(500,750,1000,1250))
predict(lm.fit, prediction, interval ='confidence', level = .95)

ggplot(Orange, aes(age, circumference)) + geom_point() + stat_smooth(method="lm", se=TRUE)