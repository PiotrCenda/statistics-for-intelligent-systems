setwd("/home/student/Documents")

# Ex. 1

file.create("Noise.txt")
Names <- list.files(getwd())

for (file in Names) {
  cat(file, "exists: ", file.exists(file),  "\n")
}

file.remove("Noise.txt")
file.exists("Noise.txt")

for (file in Names) {
  cat(file, "exists: ", file.exists(file),  "\n")
}


# Ex. 2

file.copy("Books.csv", "Books2.csv")
file.append("Books2.csv", "Books.csv")
B <- read.csv("Books2.csv", header=TRUE, sep=";")

print(B)

for (line in 1:ncol(B)) {
  B[, line] <- as.numeric(B[, line])
}

print(B)


# Ex.3 
B <- read.csv("Books.csv", header=TRUE, sep=";")
print(B)

write.csv(B, file="B3.csv")
B3 <- read.csv2("B3.csv")
print(B3)
# indexes were written as first column


# Ex. 4

x1 <- read.csv2("Life.csv")
write.csv2(x1, file="L1.csv")
x1 <- read.csv2("L1.csv")
print(x1)

write.csv2(x1, file="L1.csv")
x2 <- read.csv2("Life.csv")
write.csv2(x2, file="L2.csv", row.names=FALSE)
x2 <- read.csv2("L2.csv")
print(x2)
# indexes were written as first column in L1 file


# Ex. 5

file.append("L2.csv", "L1.csv")
l2 <- read.csv2("L2.csv")
print(l2)
l2_2 <- read.csv2("L2.csv", fill=TRUE)
print(l2)
# nothing changed...


# Ex. 6
RNGkind()
.Random.seed
RNGkind("Super-Duper", "Box-Muller")
.Random.seed


# Ex. 7
set.seed(5)
rnorm(7, mean=2, sd=1)
rnorm(7, mean=2, sd=1)
rnorm(7, mean=2, sd=1)

set.seed(6)
rnorm(7, mean=2, sd=1)


# Ex. 8

vec <- c(-1, 0.5, 2, 5)

#uniform distribution with min=0, max=3
punif(vec, min=0, max=3)
#uniform distribution with min=-3 and max=6
punif(vec, min=-3, max=6)
#normal distribution with mean=0 and standard deviation=4
pnorm(vec, mean=0, sd=3)
#chi-square distribution with 5 degrees of freedom
pchisq(vec, df=5)


# Ex. 9

#having exactly 4 successes
dbinom(4, size=10, prob=0.6)
#having exactly 1 success
dbinom(1, size=10, prob=0.6)
#having at most 4 successes
pbinom(4, size=10, prob=0.6)
#having at least 9 successes
pbinom(8, size=10, prob=0.6, lower.tail=FALSE)


# Ex. 10

vec2 <- c(seq(0.1, 0.9, by=0.1))

#normal with mean 3 and standard deviation 2
qnorm(vec2, mean=3, sd=2)
#uniform in the range from -3 to 3
qunif(vec2, min=-3, max=3)
#t-Student for 6 degrees of freedom
qt(vec2, df=6)
