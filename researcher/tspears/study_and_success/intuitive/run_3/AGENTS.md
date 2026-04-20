# Project Memory

## Context
Two hundred Engineering students at a large university in South America, enrolled in a first-semester Calculus course, were tracked throughout the semester.

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## Data File
- **File:** `data_2.csv` (located in the project folder)
- **Rows:** 200 (one per student)
- **Columns:**
  - `hours_per_week` (numeric): average hours studied outside of class per week
  - `passed` (character): whether the student passed — `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
df <- read_csv("C:/Users/fire2468/prompt-folder/data_2.csv")
```

## Key Finding
Students who **passed** studied an average of ~5.1 hrs/week (median: 4.3), while students who **failed** studied an average of ~10.7 hrs/week (median: 11.0). More hours studied is associated with a *lower* likelihood of passing — likely due to reverse causality (struggling students studying more in response to poor performance).
