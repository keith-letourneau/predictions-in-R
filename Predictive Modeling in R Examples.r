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

#Forecasting with time series data
library(forecast)
data(lynx)
View(lynx)

autoplot(lynx)

a = auto.arima(lynx)
fit = forecast(a)
autoplot(fit)
summary(fit)

#Create time series from dataset manually
library(Seatbelts)
data(Seatbelts)
View(Seatbelts)

ts = ts(data = Seatbelts[1:192,1], , start=1969, end=1984)
View(ts)