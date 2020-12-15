# EJERCICIO 1
mi_lista <- list(string = "The Bridge", number = 15, vector = c(1,2,3), bool= TRUE)

# EJERCICIO 8

lista_2 <- list(uno = 1, dos = 2)

lista_3 <- c(mi_lista, lista_2)
lista_3 <- append(mi_lista, lista_2)
  

# EJERCICIO 10

# EJERCICIO 11
  
num_objetos <- function(lista){
  
  len <- length(lista)
  return(len)
  
}

num_objetos(lista = mi_lista)

# EJERCICIO 14

numbers <- list(1:4)
numbers[2] <- list(NULL) # ojo que si queremos añadirlo sin poner list, nos borra la lista.



