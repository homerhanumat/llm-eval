# Project Memory

## Context
Two hundred Engineering students at a large university in South America, enrolled in a first-semester Calculus course, were tracked throughout the semester.

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## Data File
- **File:** `data.csv` (located in the project root folder)
- **Rows:** 200 (one per student)
- **Columns:**
  - `hours_per_week` (numeric): average hours studied outside class per week
  - `passed` (character): whether the student passed — `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Finding
Students who **failed** studied more hours per week on average (mean ≈ 10.5 hrs) than students who **passed** (mean ≈ 4.9 hrs). This counterintuitive result is likely due to reverse causation — struggling students may have increased study hours reactively.
