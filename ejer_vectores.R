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
max(x, na.rm = TRUE)


# EXERCISE 9
print(sort(x), decreasing=FALSE)
x3 <- sort(x, decreasing=TRUE)
x3


# EXERCISE 10
x2 <- 80:88
print(is.element(81, x2))
print(is.element(79, x2))

# otra opción
elemento <- 82
x2 == elemento
which(x2 == elemento) # te devuelve la posición del elemento

# también se puede así:
elemento %in% x2


# EXERCISE 12
last_element <- tail(x2, n=1) # el último elemento
print(last_element)

#también se puede con head:
head(x2, n=2) # los dos primeros elementos

#otra opción:
x2[length(x2)]


# EXERCISE 13
# find second hightest value in a given vector
sort(vect, decreasing = TRUE)[2]

# otra función:
order(vect) # nos devuelve las posiciones ordenadas
pos <- order(vect, decreasing = TRUE)
vect[pos[2]]


# EXERCISE 14
# find the 7th highest value
n <- 7 
sort(vect, decreasing = TRUE)[n] # lo ordenamos y le damos la posición de n.


# EXERCISE 20
# reverse order of a gien vector

rev(vect)
vect[length(vect):1]

