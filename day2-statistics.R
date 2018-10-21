list.files()

sink("rladies1.txt", split=T)

multiplication = 10*5
summary(multiplication)

log(5)
summary(log(5))
sum(10, 15)

var1 <- 2.5
var2 <- 4
var3 <- var1 / var2
var4 <- sqrt(var2)

z <- seq(1, 15, 4)
x <- rep(5, 10)

library(readxl)
gpadata <- read_excel("gpa.csv.xlsx")
names(gpadata)
summary(gpadata)
class(gpadata)

colSums(is.na(gpadata))
hist(gpadata$colgpa)

gpadata$hsize <- ifelse(is.na(gpadata$hsize), 
                        mean(gpadata$hsize, na.rm = T), 
                        gpadata$hsize)
gpadata$hsrank <- ifelse(is.na(gpadata$hsrank), 
                         median(gpadata$hsrank, na.rm = T), 
                         gpadata$hsrank)

colSums(is.na(gpadata))

?mean
mean(gpadata$sat)
summary(gpadata$sat)

table(gpadata$female)
countFemale <- table(gpadata$female)
table(gpadata$female) / 4137
percentFemale <- table(gpadata$female) / 4137
percentFemale

hist(gpadata$sat, main="")
title("Distribution of SAT scores.")

dev.copy2pdf(file = "histSAT.pdf")

barplot(percentFemale)
title("Frequency Distrubution Male vs. Female Students")
dev.copy2pdf(file = "barplotSAT.pdf")

plot(y = gpadata$colgpa,
     x = gpadata$sat,
     main = "BIvariate Plot: College GPAs on SAT Score")
abline(lm(gpadata$colgpa~gpadata$sat))
dev.copy2pdf(file = "binaryColGPAonSAT.pdf")

hist(gpadata$hsrank,
     main = "Student Rank in HS.")

gpadata["lnhsrank"] <- log(gpadata$hsrank)
summary(gpadata$lnhsrank)
hist(gpadata$lnhsrank,
     main = "Ln(Student Rank in HS)")
