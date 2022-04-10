# Ex. 2

wektor1 <- 1:20
print(wektor1)

wektor2 <- 20:1 * c(1, -1)
print(wektor2)

wektor3 <- c(1:20, 19:1)
print(wektor3)

wektor4 <- rep(c(4, 6, 3), 10)
print(wektor4)

wektor5 <- rep(c(4, 6, 3), length.out=31)
print(wektor5)

wektor6 <- c(rep(4, 10), rep(6, 20), rep(3, 30))
print(wektor6)

wektor6 <- (rep(0.1, 12)^seq(3, 36, 3)) * (rep(0.2, 12)^seq(1, 34, 3))
print(wektor6)

wektor7 <- rep(2, 25)^c(1:25)/c(1:25)
print(wektor7)


# Ex. 3

func1 <- function(x) {
  return(x^3+x^2*4)
}
suma1 <- sum(sapply(c(10:100), func1))
print(suma1)

suma2 <- sum(sapply(c(1:25), function(x) {(2^x)/x + (3^x)/(x^2)}))
print(suma2)



# Ex. 4

macierz1 <- matrix(c(1, 5, -2, 1, 2, -1, 3, 6, -3), nrow = 3, ncol = 3)
print((macierz1%*%macierz1%*%macierz1))

macierz1[,3] <- macierz1[,2] + macierz1[,3]
print(macierz1)



# Ex. 5

matE <- matrix(0, nrow=6, ncol=6)
for (i in 1:6) {
  matE[i, i-1] <- 1
  matE[i-1, i] <- 1
}
print(matE)



# Ex. 6

# A*x=y
A <- matrix(c(1, 2, 3, 4, 5,
              2, 1, 2, 3, 4,
              3, 2, 1, 2, 3,
              4, 3, 2, 1, 2,
              5, 4, 3, 2, 1), nrow=5, ncol=5)
y <- c(7, -1, -3, 5, 17)

x <- solve(A, y)
print(x)


# Ex. 7

factors <- c()

for (i in 1:256742) {
  if (256742%%i==0) {
    factors <- append(factors, i)
  }
}

print(factors)

# Ex. 8

for (i in 1:100) {
  if (i%%3==0 && i%%5==0) {
    print("FizzBuzz")
  } else if (i%%5==0) {
    print("Buzz")
  } else if (i%%3==0) {
    print("Fizz")
  } else {
    print(i)
  }
}
