# VECTORES
# EXERCISE 3:

vector = c()
values = c(0,1,2,3,4,5,6,7,8,9)
for (i in 1:length(values))
  vector[i] <- values[i]
print(vector)

# EXERCISE 6:
x <- c(5, 6, 7, 8)
?mean
print(c('mean:', mean(x)))  
print(c('sum:', sum(x)))
print(c('prod:', prod(x)))

# EXERCISE 7
x = c(5, NULL, 15, 20, NA, 30)
print(c('mean:', mean(x), na.rm=TRUE))

# EXERCISE 8
x <- sample(100:130)
print(c('min:', min(x)))
print(c('max:', max(x)))

# EXERCISE 9
print(sort(x), decreasing=FALSE)

# EXERCISE 10
x2 = 80:88
print(is.element(81, x2))
print(is.element(79, x2))
