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

# o también: (pero es mejor con la función cbind)
mi_archivo <- data.frame(mi_archivo, col_5 = columna_nueva)
mi_archivo


