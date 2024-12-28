```r
# Safer subsetting using `dplyr` package
library(dplyr)

df <- data.frame(a = 1:3, b = 4:6)
cols_to_select <- c("a", "c", "d")

# Using select, with error handling
subset_df <- tryCatch({
  df %>% select(all_of(cols_to_select))
}, error = function(e) {
  warning("Columns not found:", paste(setdiff(cols_to_select, names(df)), collapse = ", "))
  df
})

#Check if any columns were not found
if(length(setdiff(cols_to_select, names(df)))){print("Columns not found")}

print(subset_df)
```