# Silent Column Dropping in R Subsetting

This repository demonstrates a subtle bug in R related to subsetting data frames using character vectors.  When you try to select columns that don't exist, R silently drops them without warning, potentially leading to incorrect analysis.

The `bug.R` file shows the problematic code. The `bugSolution.R` file demonstrates a safer approach.

This is important because such silent failures can be difficult to debug. The solution emphasizes using more robust methods that provide explicit error handling or warnings when encountering non-existent columns.