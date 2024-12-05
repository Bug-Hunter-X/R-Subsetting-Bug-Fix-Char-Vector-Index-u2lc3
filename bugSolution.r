```r
# Correct subsetting using character vector indexing
df <- data.frame(a = 1:3, b = letters[1:3])

# Correct way to subset rows based on column 'a' values (logical subsetting):
result1 <- df[df$a == 2, ] # Subsets rows where column a is equal to 2
print(result1)

# Correct way to subset using column names (column selection):
result2 <- df[, "b"] # Selects only column 'b'
print(result2)

# Correct way to subset rows and columns:
result3 <- df[df$a >=2, c("a","b")] #Selects rows where a is greater or equal to 2, and columns a and b
print(result3)

# using drop = FALSE to maintain data.frame structure when subsetting single column
result4 <- df[ , "a", drop = FALSE]
print(result4)
```