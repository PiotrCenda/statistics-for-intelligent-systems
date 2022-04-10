library(Hmisc)

setwd("/home/student/Documents")

# Ex. 1

chem <- read.csv2("Chem.csv",  header=TRUE)
A <- chem
B <- chem

A[is.na(A)] = sample(x=na.omit(A[['salary']]), size=1)
print(A)

B[is.na(B)] = mean(na.omit(B[['salary']]))
print(B)


# Ex. 2

per <- read.csv2("Per.csv",  header=TRUE)
C <- per

C[['sister']] <- impute(C[['sister']], median)
C[['brother']] <- impute(C[['brother']], median)

print(C)


# Ex. 3

norm <- read.csv2("Norm.csv",  header=TRUE)

norm['x'] <- scale(norm['x'])

print(norm)
sd(norm[['x']])
mean(norm[['x']])


# Ex. 4

fam <- read.csv2("Fam.csv",  header=TRUE)

transform(fam, cost=as.factor(cost))
transform(fam, number=as.factor(number))

print(fam)


# Ex. 5

h_range <- summary(C[['brother']])[['Max.']] - summary(C[['brother']])[['Min.']]
iqr_range <- summary(C[['sister']])[['3rd Qu.']] - summary(C[['sister']])[['1st Qu.']]

print(h_range)
print(iqr_range)

cor.test(C[['brother']], C[['sister']])


# Ex. 6

summary(A)
summary(B)


# Ex. 7

plot(1:10, 1:10)


# Ex. 8

hist(chem)


# Ex. 9

gal <- read.csv2("Gal.csv",  header=TRUE)
hist(gal[['velocity']], breaks=12, main='histogram')


# Ex. 10

plot(density(na.omit(chem[['salary']])), main='density plot')
plot(density(gal[['velocity']]), main='density plot 2')


# Ex. 11

boxplot(na.omit(chem[['salary']]), outline=FALSE, main='boxplot')


# Ex. 12

plot(C, main='scatterplot')

