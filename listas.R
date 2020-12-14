# LISTAS

mi_lista <- list(sum(vect), pos, 'uno') # nos crea una lista de 3
# dentro tengo la suma del vector, un vector de pos de 11 elementos y un uno
mi_lista

names(mi_lista) # no tengo nombres

# así que los puedo crear:
names(mi_lista) <- c('suma', 'posiciones', 'elemento') # pongo los nombres

mi_lista <- (list(suma==sum_vect, posiciones = pos, elemento = elemento))

mi_lista['suma'] # al nombrarlos, puedo acceder al elemento con el nombre
mi_lista['posiciones']

# puedo guardarlo en una variable y me daría una lista
lista_pos <- mi_lista['posiciones']
lista_pos

# con dos corchetes extraigo el valor que había en esa posción de la lista:
lista_pos2 <- mi_lista[['posiciones']]
lista_pos2

# en la lista podíamos acceder a posiciones por su número de elemento:
mi_lista[2]

# equivalente a los dos corchetes, es el $:
all.equal(mi_lista$posiciones, mi_lista[['posiciones']]) # así comparamos

# aquí nos dice que no son iguales.  No devuelve un FALSE si no te dice 
# que no son iguales
all.equal(mi_lista$posiciones, mi_lista['posiciones'])

bool <- identical(mi_lista$posiciones, mi_lista[['posiciones']])
if(bool){
  print('son iguales')
}

pos <- 1:14
dim(pos) <- c(7, 2) # lo paso a matriz de 7 x 2
pos

attributes(pos)$dim <- c(1, 14)
pos

# para añadir nuevos elementos a la lista:
mi_lista[['new_element']] <- 1:3 # le meto un vector nuevo del 1 al 3
mi_lista

# o podemos en la posición que queramos:
mi_lista[[8]] <- 1:3 # al ponerlo en la posición 8, nos crea posiciones nulas:
mi_lista

# también se puede así:
mi_lista$nuevo_elemento <- 1:10
mi_lista

# o con comillas: también valen las comillas normales
mi_lista$`otro elemento` <- 1:3
mi_lista


mi_lista[c(1, 2 ,3)] # accedo a los primeros 3 elementos

# y puedo guardarlo en una nueva variable:
new_list <- mi_lista[c(1, 2 ,3)] 
new_list

#
a <- list(1:3, 'a string', pi, list(-1, 4))
a[1:2] # los dos primeros elementos de la lista
a[3]
a[4] # accedo al cuarto elemento

# pero si es con doble corchete, no mantenemos la estructura de la lista:
a[[4]]

a[[4]][1] # accedo al primer elemento del 4 elemento.

