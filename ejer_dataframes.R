# EJERCICIO 1
empty_df <- function(){
  
  df <- data.frame()
  
  return(df)
}


# EJERCICIO 2

vect_to_df <- function(v1, v2, v3, v4){
  
  df <- data.frame(v1, v2, v3, v4)
  
  return(df)
}

# EJERCICIO 3:


structure_of_df <- function(df){
  
  columnas <- ncol(df)
  filas <- nrow(df)
  
  return(c(columnas, filas))
}


# EJERCICIO 4
# con función:
summary_of_df <- function(){
  summary <- summary(df)
  return(summary)
}


# EJERCICIO 5

column_by_name <- function(df, column){
  selected_column <- df[, column]
  return(selected_column)
}

# otra opción
column_by_name2 <- function(df, column, delete_structure = TRUE){
  selected_column <- df[, column, drop = delete_structure]
  return(selected_column)
}


# EJERCICIO 6
stract_n_first_row <- function(df, n){ # n será cuantas filas quiero sacar
  first_n <- df[1:n, ] # desde 1 hasta la fila n
  return(first_n)
}


# EJERCICIO 7
stract_by_row_and_col <- function(df, col, row){
  selected_df <- df[row, col]
  return(selected_df)
}

stract_by_row_and_col(mi_primer_df, c(1,2), c(1,3))


# EJERCICIO 8
add_column <- function(df, column, nombre){
  df <- data.frame(df, nombre = column)
  return(df)
}

add_column2 <- function(df, column){
  df <- cbind(df, column)
  return(df)
}


# EJERCICIO 9
# Write a program to add new row(s) to an existing data frame.

add_row <- function(df, row){
  df[nrow(df) + 1, ] <- row
  return(df)
}

# otra opción:
add_row <- function(df, row){
  df <- rbind(df, row)
  return(df)
}


# EJERCICIO 10
# Write a program to drop column(s) by name from a given data frame

delete_col <- function(df, col_name){
  df[col_name] <- NULL
  return(df)
}

delete_col(mi_primer_df, c("col 1.1", "col 2.1"))


# EJERCICIO 11
# Write a program to drop row(s) by number from a given data frame:

delete_row <- function(df, row_name){
  df <- df[-row_name, ] # le decimos qué filas NO queremos.
  return(df)
}

delete_row(mi_primer_df, 3) # se debe decir el número, no el nombre de la fila.


# EJERCICIO 12
# Write a program to sort a given data frame by multiple columns(s)

sort_by_col <- function(df, cols){
  orden <- order(df[, cols[1]], df[, cols[2]])
  df <- df[orden, ]
  return(df)
}

sort_by_col(mi_primer_df, c("col 4", "col 1"))


# EJERCICIO 13
# Write a program to create inner, outer, left, right
df <- data.frame(v1 = c(1, 2, 3), v2 = c(15, 16, 17))
df2 <- data.frame(v1 = c(2, 5, 6), v10 = c(10, 11, 12))

merge(x = df, y = df2, by = "v1") # le digo por cuál quiero unirlos. INNER joint
merge(x = df, y = df2, by = "v1", all.x = TRUE) # left joint. se queda con las xs. 
merge(x = df, y = df2, by = "v1", all.y = TRUE) # right joint. 
merge(x = df, y = df2, by = "v1", all = TRUE) # full joint

# lo metemos en una función:
merge_df <- function(df1, df2, key, type){ # type sería un string
  if(type == "inner"){
    merged_df <- merge(x = df, y = df2, by = key)
  }else if(type == "right"){
    merged_df <- merge(x = df, y = df2, by = "v1", all.y = T)
  }else if(type == "left"){
    merged_df <- merge(x = df, y = df2, by = "v1", all.x = T)
  }else if(type == "full"){
    merged_df <- merge(x = df, y = df2, by = "v1", all = T)
  }
}

df3 <- merge_df(df, df2, "v1", "full")
df3


# EJERCICIO 14
# Write proram to replace NA values with 3 in a given data frame

na_by_3 <- function(df){
  df[is.na(df)] <- 3
  return(df)
}

na_by_3(df3)


# EJERCICIO 15
# Write a program to change a column name of a given data frame.

change_name <- function(df, col){
  
}


# EJERCICIO 17
# Write a program to select some random rows from a given data frame:

select_random <- function(df){
  n_row <- nrow(df) # veo cuántas filas tiene mi df
  num_rows <- sample(n_row, size = 1)
  sample_order <- sample(n_row, size = num_rows) # 1 valor del número de filas que tenga
  df <- df[sample_order, ]
  return(df)
}

select_random(df3)


# EJERCICIO 19
# Write a program to compare two data frames to find the elements in firs
# data frame that are not present in second dataframe:

diff_elements <- function(df1, df2){
  # primero pasamos el df a matrix para poder pasarlo a vector:
  vect1 <- as.vector(as.matrix(df1))
  vect2 <- as.vector(as.matrix(df2))
  
  diff <- setdiff(vect1, vect2) # con la función setdiff
  return(diff)
}

diff_elements(df, df2)


# EJERCICIO 21
# Write a program to find elements come only once that are common to both
# given data frames. (valores únicos y que estén en ambos dfs.)

# esta función, devuelve los valores que están en ambos (no únicos)
com_elements <- function(df1, df2){
  # primero pasamos el df a matrix para poder pasarlo a vector:
  vect1 <- as.vector(as.matrix(df1))
  vect2 <- as.vector(as.matrix(df2))
  
  mask <- vect1 %in% vect2
  common <- vect1[mask]
  
  return(common)
}

com_elements(df, df2)

# ahora valores únicos:
com_unique_elements <- function(df1, df2){
  # usamos la función de arriba:
  vect1 <- com_elements(df1, df2)
  
  value_count <- table(vect1)
  mask_unique <- value_count == 1
  unique <- names(value_count[mask_unique])
  
  return(unique)
}

# otra opción:
com_unique_elements2 <- function(df1, df2){
  # primero pasamos el df a matrix para poder pasarlo a vector:
  vect1 <- as.vector(as.matrix(df1))
  vect2 <- as.vector(as.matrix(df2))
  
  value_count1 <- table(vect1)
  value_count2 <- table(vect2)
  
  mask_unique1 <- value_count1 == 1 # el table es un value count
  mask_unique2 <- value_count2 == 1
  
  unique1 <- names(value_count1)[mask_unique1] # le aplico la máscara a los nombres
  unique2 <- names(value_count2)[mask_unique2]
  
  mask <- unique1 %in% unique2
  
  comm_unique <- unique1[mask]
  return(comm_unique)
}

com_unique_elements2(df, df3)


# EJERCICIO 23
# Write a program to count NAs in data frame.
sum(is.na(df))



# guardando un archivo:
saveRDS(df3, file = "mi_df.rds")  # y ya tenemos un df guardado.
