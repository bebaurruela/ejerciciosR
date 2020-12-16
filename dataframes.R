vector <- 1:12
dim(vector) <- c(3, 4) # definimos las dimensiones filas x cols.

rownames(vector) <- c("primera fila", "segunda fila", "y tercera")
colnames(vector) <- c("col 1", "col 2", "col 3", "col 4")

if("matrix" %in% class(vector)){
  mi_primer_df <- as.data.frame(vector)
  print(class(mi_primer_df))
}

library(data.table)

data.table::fwrite(x = mi_primer_df, file = "mi_primer_csv.csv", row.names = T)

mi_primer_csv <- as.data.frame(mi_primer_csv)
class(mi_primer_csv)

mi_archivo <- data.table::fread("mi_primer_csv.csv", data.table = FALSE, sep = ",")

rownames(mi_archivo) <- mi_archivo$V1

mi_archivo$V1 <- NULL # para borrarlo

mi_archivo[,2] # fila 2
mi_archivo[2] # columna 2
mi_archivo[1, ] # fila 1

# con drop = False
mi_subset2 <- mi_archivo[, 2, drop = F] # me mantiene estructura de dataframe
mi_subset2

mi_subset1 <- mi_archivo[1, , drop = F]
mi_subset1

mi_archivo[, 1:2] # todas las filas y 2 columnas

mi_archivo[, (length(mi_archivo) -1): length(mi_archivo)] # las últimas 2 cols.

# mejor de esta manera:
mi_archivo[, (ncol(mi_archivo) - 1): ncol(mi_archivo)]

mi_archivo[(nrow(mi_archivo) -1): nrow(mi_archivo), ] # las últimas dos filas

mi_archivo[, c("col 1", "col 2")] # podemos acceder por nombre de columnas

col <- colnames(mi_archivo)
which(col == "col 2")
primer_pais <- which(col == "col 2")
ultimo_pais <- which(col == "col 3")
mi_archivo[, primer_pais:ultimo_pais]

# para meter una nueva columna:
columna_nueva <- c("mi", "nueva", "columna") # creamos un vector

# con la función cbind
cbind(mi_archivo, columna_nueva)

# y sobreescribimos el dataframe:
mi_archivo <- cbind(mi_archivo, columna_nueva)

# o también: (para string es mejor porque podemos meter argumento stringsasf)
mi_archivo <- data.frame(mi_archivo, col_5 = columna_nueva, stringsAsFactors = F)
mi_archivo

# otra forma de crear una nueva columna:
mi_archivo$nueva_col <- columna_nueva # le añado lo que quiero.
mi_archivo

# rbind
r1 <- data.frame(a = 1, b = 2, c = "X")
r2 <- data.frame(a = 3, b = 4, c = "Y")
r3 <- data.frame(a = 5, b = 6, c = "Z")
rbind(r1, r2, r3)

# el do.call
lista_filas <- list(r1, r2, r3)
rbind(lista_filas[[1]], lista_filas[[2]], lista_filas[[3]])

# el do.call sería lo equivalente a la celda anterior de código
do.call(rbind, lista_filas)

# el str es como el describe de python:
str(mi_archivo)

