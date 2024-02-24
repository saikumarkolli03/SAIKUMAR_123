#task-1
#1
> original_vector <- c(5,6,7,8,9)
> reversed_vector <- reverse_vector(original_vector)
> print(reversed_vector)
[1] 9 8 7 6 5

#2

> vector1 <- c(1, 2, 3)
> vector2 <- c(4, 5, 6)
> concatenated_vector <- c(vector1, vector2)
> print(concatenated_vector)
[1] 1 2 3 4 5 6

#3

> count_values_in_range <- function(vec, min_range, max_range) {
  +     count <- sum(vec >= min_range & vec <= max_range)
  +     return(count)
  + }
> 
  > my_vector <- c(1, 3, 5, 7, 9, 11, 13, 15, 17)
  > min_value <- 5
  > max_value <- 15
  > 
    > count <- count_values_in_range(my_vector, min_value, max_value)
    > cat("Number of values in the range [", min_value, "-", max_value, "]: ", count, "\n")
    Number of values in the range [ 5 - 15 ]:  6 
    
    #4
    
    > combine_by_row <- function(vec1, vec2) {
      +     combined <- rbind(vec1, vec2)
      +     return(combined)
      + }
    > 
      > combine_by_column <- function(vec1, vec2) {
        +     combined <- cbind(vec1, vec2)
        +     return(combined)
        + }
    > 
      > vector1 <- c(1, 2, 3)
    > vector2 <- c(4, 5, 6)
    > 
      > combined_row <- combine_by_row(vector1, vector2)
    > cat("Combined by row:\n", combined_row, "\n")
    Combined by row:
      1 4 2 5 3 6 
    > 
      > combined_column <- combine_by_column(vector1, vector2)
    > cat("Combined by column:\n", combined_column, "\n")
    Combined by column:
      1 2 3 4 5 6 
    
    #5
    
    > test_greater_than_10 <- function(vec) {
      +     return(vec > 10)
      + }
    > 
      > my_vector <- c(5, 10, 15, 20, 25)
    
    > result <- test_greater_than_10(my_vector)
    
    > print(result)
    [1] FALSE FALSE  TRUE  TRUE  TRUE
    
    #6
    
    > my_list <- list(
      +     string = "Hello, world!",
      +     number = 42,
      +     vector = c(1, 2, 3, 4, 5),
      +     logical_value = TRUE
      + )
    > 
      > print(my_list)
    $string
    [1] "Hello, world!"
    
    $number
    [1] 42
    
    $vector
    [1] 1 2 3 4 5
    
    $logical_value
    [1] TRUE
    
    #7
    
    > my_vector <- c(1, 2, 3)
    > my_matrix <- matrix(1:6, nrow = 2)
    > inner_list <- list(a = 10, b = 20, c = 30)
    > my_list <- list(my_vector = my_vector, my_matrix = my_matrix, inner_list = inner_list)
    > first_element <- my_list[[1]]
    > second_element <- my_list[[2]]
    > print("First element:")
    [1] "First element:"
    > print(first_element)
    [1] 1 2 3
    > print("Second element:")
    [1] "Second element:"
    > print(second_element)
    [,1] [,2] [,3]
    [1,]    1    3    5
    [2,]    2    4    6
    
    
    #8
    
    > my_vector <- c(1, 2, 3)
    > my_matrix <- matrix(1:6, nrow = 2)
    > inner_list <- list(a = 10, b = 20, c = 30)
    > my_list <- list(my_vector = my_vector, my_matrix = my_matrix, inner_list = inner_list)
    > new_element <- "new element"
    > my_list[length(my_list) + 1] <- new_element
    > print(my_list)
    $my_vector
    [1] 1 2 3
    
    $my_matrix
    [,1] [,2] [,3]
    [1,]    1    3    5
    [2,]    2    4    6
    
    $inner_list
    $inner_list$a
    [1] 10
    
    $inner_list$b
    [1] 20
    
    $inner_list$c
    [1] 30
    
    
    [[4]]
    [1] "new element"
    
    #9
    
    > nested_list <- list(
      +     list(1, 2, 3),
      +     list("a", "b", "c"),
      +     list(TRUE, FALSE, TRUE)
      + )
    > 
      > second_element <- nested_list[[2]]
    
    > print(second_element)
    [[1]]
    [1] "a"
    
    [[2]]
    [1] "b"
    
    [[3]]
    [1] "c"
    
    #task-2
    #1
    
    > vector_list <- list(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9))
    > matrix_from_list <- do.call(rbind, vector_list)
    > print(matrix_from_list)
    [,1] [,2] [,3]
    [1,]    1    2    3
    [2,]    4    5    6
    [3,]    7    8    9
    
    #2
    
    > given_matrix <- matrix(c(1, 2, 3, 8, 9, 10, 4, 5, 6), nrow = 3, byrow = TRUE)
    > submatrix <- given_matrix[, given_matrix[1,] > 7]
    > print(submatrix)
    
    [1,]
    [2,]
    [3,]
    
    #3
    
    > given_matrix <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2)
    > one_dimensional_array <- as.vector(given_matrix)
    > print(one_dimensional_array)
    [1] 1 2 3 4 5 6
    
    #4
    
    > given_matrix <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2)
    > max_value <- max(given_matrix)
    > min_value <- min(given_matrix)
    > max_index <- which(given_matrix == max_value, arr.ind = TRUE)
    > min_index <- which(given_matrix == min_value, arr.ind = TRUE)
    > cat("Maximum value:", max_value, "\n")
    Maximum value: 6 
    > cat("Row index of maximum value:", max_index[1], "\n")
    Row index of maximum value: 2 
    > cat("Column index of maximum value:", max_index[2], "\n")
    Column index of maximum value: 3 
    > cat("\nMinimum value:", min_value, "\n")
    
    Minimum value: 1 
    > cat("Row index of minimum value:", min_index[1], "\n")
    Row index of minimum value: 1 
    > cat("Column index of minimum value:", min_index[2], "\n")
    Column index of minimum value: 1 
    
    #5
    
    > vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
    > vector2 <- c(9, 8, 7, 6, 5, 4, 3, 2, 1)
    > matrix1 <- matrix(vector1, nrow = 3, byrow = TRUE)
    > matrix2 <- matrix(vector2, nrow = 3, byrow = TRUE)
    > array_of_matrices <- array(c(matrix1, matrix2), dim = c(3, 3, 2))
    > print(array_of_matrices)
    , , 1
    
    [,1] [,2] [,3]
    [1,]    1    2    3
    [2,]    4    5    6
    [3,]    7    8    9
    
    , , 2
    
    [,1] [,2] [,3]
    [1,]    9    8    7
    [2,]    6    5    4
    [3,]    3    2    1
    
    #6
    
    > my_array <- array(1:24, dim = c(2, 3, 4))
    > print(my_array)
    , , 1
    
    [,1] [,2] [,3]
    [1,]    1    3    5
    [2,]    2    4    6
    
    , , 2
    
    [,1] [,2] [,3]
    [1,]    7    9   11
    [2,]    8   10   12
    
    , , 3
    
    [,1] [,2] [,3]
    [1,]   13   15   17
    [2,]   14   16   18
    
    , , 4
    
    [,1] [,2] [,3]
    [1,]   19   21   23
    [2,]   20   22   24
    
    #7
    
    > vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
    > vector2 <- c(9, 8, 7, 6, 5, 4, 3, 2, 1)
    > matrix1 <- matrix(vector1, nrow = 3, byrow = TRUE)
    > matrix2 <- matrix(vector2, nrow = 3, byrow = TRUE)
    > array_of_matrices <- array(c(matrix1, matrix2), dim = c(3, 3, 2))
    > print("Second row of the second matrix:")
    [1] "Second row of the second matrix:"
    > print(array_of_matrices[2, , 2])
    [1] 6 5 4
    > print("Element in the 3rd row and 3rd column of the 1st matrix:")
    [1] "Element in the 3rd row and 3rd column of the 1st matrix:"
    > print(array_of_matrices[3, 3, 1])
    [1] 9
    
    #8
    
    > array1 <- array(1:9, dim = c(3, 3))
    > array2 <- array(10:18, dim = c(3, 3))
    > array3 <- array(19:27, dim = c(3, 3))
    > combined_array <- rbind(array1[1,], array2[1,], array3[1,])
    > print(combined_array)
    [,1] [,2] [,3]
    [1,]    1    4    7
    [2,]   10   13   16
    [3,]   19   22   25
    
    
    #task-3
    
    #1
    
    > array1 <- array(1:9, dim = c(3, 3))
    > array2 <- array(10:18, dim = c(3, 3))
    > array3 <- array(19:27, dim = c(3, 3))
    > combined_array <- rbind(array1[1,], array2[1,], array3[1,])
    > print(combined_array)
    [,1] [,2] [,3]
    [1,]    1    4    7
    [2,]   10   13   16
    [3,]   19   22   25
    > 
      > v1 <- c(1, 2, 3, 4, 5)
    > v2 <- c("A", "B", "C", "D", "E")
    > v3 <- c(10.5, 20.5, 30.5, 40.5, 50.5)
    > v4 <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
    > 
      > my_dataframe <- data.frame(
        +     NumericColumn = v1,
        +     CharacterColumn = v2,
        +     NumericColumn2 = v3,
        +     LogicalColumn = v4
        + )
    > 
      > print(my_dataframe)
    NumericColumn CharacterColumn NumericColumn2 LogicalColumn
    1             1               A           10.5          TRUE
    2             2               B           20.5         FALSE
    3             3               C           30.5          TRUE
    4             4               D           40.5         FALSE
    5             5               E           50.5          TRUE
    
    #2
    
    > data <- data.frame(
      +     ID = c(1, 2, 3, 4, 5),
      +     Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
      +     Age = c(25, 30, 35, 40, 45),
      +     Height = c(160, 170, 175, 180, 165),
      +     Weight = c(55, 70, 75, 80, 60)
      + )
    > 
      > cat("Statistical Summary:\n")
    Statistical Summary:
      > print(summary(data))
    ID        Name                Age         Height        Weight  
    Min.   :1   Length:5           Min.   :25   Min.   :160   Min.   :55  
    1st Qu.:2   Class :character   1st Qu.:30   1st Qu.:165   1st Qu.:60  
    Median :3   Mode  :character   Median :35   Median :170   Median :70  
    Mean   :3                      Mean   :35   Mean   :170   Mean   :68  
    3rd Qu.:4                      3rd Qu.:40   3rd Qu.:175   3rd Qu.:75  
    Max.   :5                      Max.   :45   Max.   :180   Max.   :80  
    > 
      > cat("\nStructure of the Data Frame:\n")
    
    Structure of the Data Frame:
      > print(str(data))
    'data.frame':	5 obs. of  5 variables:
      $ ID    : num  1 2 3 4 5
    $ Name  : chr  "Alice" "Bob" "Charlie" "David" ...
    $ Age   : num  25 30 35 40 45
    $ Height: num  160 170 175 180 165
    $ Weight: num  55 70 75 80 60
    NULL
    
    #3
    
    > data <- data.frame(
      +     ID = c(1, 2, 3, 4, 5),
      +     Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
      +     Age = c(25, 30, 35, 40, 45),
      +     Height = c(160, 170, 175, 180, 165),
      +     Weight = c(55, 70, 75, 80, 60)
      + )
    > 
      > age_column <- data$Age
    > print(age_column)
    [1] 25 30 35 40 45
    
    #4
    
    > data <- data.frame(
      +     ID = c(1, 2, 3, 4, 5),
      +     Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
      +     Age = c(25, 30, 35, 40, 45),
      +     Height = c(160, 170, 175, 180, 165),
      +     Weight = c(55, 70, 75, 80, 60)
      + )
    > 
      > extracted_data <- data[c(3, 5), c(1, 3)]
    > print(extracted_data)
    ID Age
    3  3  35
    5  5  45
    
    #5
    
    > data <- data.frame(
      +     ID = c(1, 2, 3),
      +     Name = c("Alice", "Bob", "Charlie"),
      +     Age = c(25, 30, 35)
      + )
    > 
      > new_row <- c(4, "David", 40)
    > data <- rbind(data, new_row)
    > 
      > new_column <- c(160, 170, 175, 180)
    > data$Height <- new_column
    > 
      > print(data)
    ID    Name Age Height
    1  1   Alice  25    160
    2  2     Bob  30    170
    3  3 Charlie  35    175
    4  4   David  40    180
    
    
    
    
    
    