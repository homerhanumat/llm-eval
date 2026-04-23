# Project Memory

## Context
Two hundred Engineering students at a large university in South America, enrolled in a first-semester Calculus course, were tracked throughout the semester.

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## Data File
- **File:** `data.csv` (in the project root folder)
- **Rows:** 200 (one per student)
- **Columns:**
  - `hours_per_week` (numeric): average hours studied outside class per week
  - `passed` (character): whether the student passed — `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
df <- read_csv("c:/Users/bradl/prompt-folder/data.csv")
```

## Key Finding
Students who passed studied an average of ~10.5 hrs/week (median 10.6), compared to ~4.9 hrs/week (median 4.2) for those who did not pass — a difference of ~5.6 hours. The association between study hours and passing is strong.
