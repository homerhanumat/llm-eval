# Project Memory

## Data File
- **File**: `data.csv` (located in `c:/Users/bradl/prompt-folder/`)
- **Format**: CSV, 200 rows, 2 columns

## Schema
- `hours_per_week` (numeric): Average hours per week a student studied outside of class
- `passed` (character): Whether the student passed the course — values: `"yes"` or `"no"`

## Context
- 200 Engineering students at a large South American university, enrolled in a first-semester Calculus course
- Research question: Are students who study more hours per week more likely to pass?

## Loading the Data
```r
library(tidyverse)
df <- read_csv("c:/Users/bradl/prompt-folder/data.csv")
```

## Key Finding
Students who passed studied ~10.5 hrs/week on average vs. ~4.9 hrs/week for those who failed (a difference of ~5.6 hrs/week). 113/200 students (56.5%) passed.
