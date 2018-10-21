labordata <- read.csv(file = "uslabor.csv", header = T)

names(labordata)
head(labordata)
summary(labordata)

install.packages("fBasics")
install.packages("timeDate")
install.packages("timeSeries")

library(timeDate)
library(timeSeries)
library(fBasics)

mean(labordata$yclfpr)
summary(labordata$yclfpr)
skewness(labordata$yclfpr)
kurtosis(labordata$yclfpr)

hist(labordata$yclfpr, main = "Distribution of Labor Force.")

dev.copy2pdf(file = "histLaborForce.pdf")

install.packages("carData")
install.packages("car")
library(carDara)
library(car)
qqPlot(labor)

model1 <- lm(yclfpr ~ x1cunr, data = labordata)
summary(model1)
summary(model1)$coef

install.packages("lmtest")
library(lmtest)
bptest(model1, ~ x1cunr +
         I(x1cunr^2),
       data = labordata)

cor(labordata$x1cunr, rstudent(model1))

VIF(model1)

install.packages("nlme")
library(nlme)
install.packages("mgcv")
library(mgcv)
install.packages("itsadug")
library(itsadug)

outcome <- bam(yclfpr ~te(year), data = labordata)
