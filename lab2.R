# Ex. 1

current_date <- function() {
  date <- format(Sys.time(), "%a %b %d %X %Y")
  sprintf("The current date is %s", date)
}

current_date()


# Ex. 2

power_func <- function(base=2, power=1) {
  return(base^power)
}

power_func()
power_func(3, 2)


# Ex. 3

inside <- function(num=0, vec) {
  return(num %in% vec)
}

inside(2, c(1, 2, 3))
inside(0, c(1, 2, 3))

# Ex. 4

even_odd_square <- function(vec) {
  if (length(vec) %% 2 == 0) {
    vec[vec %% 2 == 0] = vec[vec %% 2 == 0]^2
  } else {
    vec[vec %% 2 == 1] = vec[vec %% 2 == 1]^2
  }
  return(vec)
}

even_odd_square(c(1, 2, 3))
even_odd_square(c(1, 2, 3, 4))

# odd_func <- edit(even_odd_square)
odd_func(c(1, 2, 3))
odd_func(c(1, 2, 3, 4))


# Ex. 5

subsorted <- function(vec, beg=1, end=3) {
  return(sort(vec)[beg:end])
}

subsorted(c(3, 1, 5, 4, 2))
subsorted(c(3, 1, 5, 4, 2), 4, 5)


# Ex. 6

matrix_square <- function(matr=matrix(0, ncol=2, nrow=2)) {
  return_matr <- matr
  for (i in 1:(dim(matr)[1] - 1)) {
    return_matr <- return_matr %*% matr
  }
  
  return(return_matr)
}

matrix_square()
matrix_square(matrix(3, ncol=3, nrow=3))


# Ex. 7

`%=>%` <- function(a, b) {
  return((!a && !b) || (!a && b) || (a && b))
}

0%=>%0
1%=>%0
0%=>%1
1%=>%1

`%+2%` <- function(a, b) {
  return((a + b)^2)
}

1%+2%1
2%+2%3

`%ev%` <- function(a, b) {
  ifelse(b %% 2 == 1, a+b, a*b)
}

2%ev%4
2%ev%3


# Ex. 8

truthcount <- function(vec) {
  return(sum(as.logical(vec)))
}

falsecount <- function(vec) {
  return(sum(!(as.logical(vec))))
}

truthcount(c(1, 0, 1, 0, 1))
falsecount(c(1, 0, 1, 0, 1))

randlett <- function(num=10) {
  repeat {
    sampl <- sample(letters, num, replace=TRUE)
    
    if (length(sampl) < length(letters)) {
      condition = TRUE
      
      for (i in sampl) {
        if (truthcount((sampl == i)) != 1) {
          condition = FALSE
          break
        }
      } 
    } else {
      condition = TRUE
      
      for (i in letters) {
        if (falsecount((sampl == i)) == length(sampl)) {
          condition = FALSE
          break
        }
      } 
    }
    
    if (condition) {
      break
    } else {
      print(sampl)
    }
  }
  
  return(sampl)
}

randlett()
randlett(15)
randlett(70)



# Ex. 9

pos_func <- function(x, y=x) {
  for (i in 1:length(x)) {
    if (x[i] > 0 || y[i] > 0){
      print(1)
    } else if (x[i] < 0) {
      vim <<- y[i]
    }
  }
}

pos_func(c(1, 2, 4, 0))
pos_func(c(1, 0, -4, 0, 6), c(0, 1, -7, 0))
print(vim)


# Ex. 10

last_func <- function(x) {
  if(is.logical(x)) {
    print(x)
  } else if (is.numeric(x)) {
    print(sapply(x, function(x) x^2))
  } else if (is.matrix(x)) {
    print(dim(x))
  } else {
    return(length(x)) 
  }
}

last_func(c(TRUE, TRUE, FALSE))
last_func(c(1, 2, 3, 4))
last_func(matrix(0, nrow=2, ncol=3))
last_func(letters[1:10])



