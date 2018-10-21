v1 <- c(1, 2, 3, 4, 5)
v2 <- c("red", "blue", "green")
length(v1)
length(v2)
class(v1)
class(v2)
v3 <- c(v1, v2)
class(v3)


x <- factor(c("yes", "no", "yes", "no", "yes"),
            levels = c("yes", "no"))

y <- factor(c("yes", "no", "yes", "no", "yes", "maybe"),
            levels = c("yes"))

m1 <- matrix(0, 3, 2)
m2 <- matrix(1, 3, 3)

m3 <- matrix(c("a", "c", "B", "e", "V", "r"), 2, 3)
length(m1)

df1 <- data.frame(v1, v1 * 10)
v2 <- c(6, 7, 8, 9, 10)
df2 <- data.frame(df1, v2)
v3 <- c(6, 7, 8, 9, 0, 2)


length(df2)


class(df2)

attributes(df2)

data(Titanic)
?Titanic
View(Titanic)

titanic2 <- data.frame(Titanic)

table(titanic2["Age"])
class(titanic2)

head(titanic2)
tail(titanic2)
head(titanic2["Age"], 10)

library(psych)
psych::describe(titanic2)

titanic2$Age
titanic2$Class
library(readstata13)

newData <- read.dta13("CB_2017_short.dta")
head(newData)
describe(newData)
newData$AGE
table(newData$AGE, newData$RATEHAP)
age <- newData$AGE
hist(age)
mean(age)
View(newData)

comp <- !is.na(newData$COMPABL)
comp

newdata2 <- subset(newData, !is.na(COMPABL), select=c(ID, AGE, RESPSEX, STRATUM, RATEHAP, IMMIGATT, EMPLSIT, ETHNIC, RESPEDU, COMPABL, FRQINTR, IDEALNCH))
newdata2

install.packages("descr")
library(descr)

descr::crosstab(newData$RESPSEX, newData$COMPABL, prop.r=T)

write.csv(newData, "newData.csv")



