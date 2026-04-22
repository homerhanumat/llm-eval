# Project Memory

## Overview
Analysis of student performance in a first-semester Calculus course at a large South American university. 200 Engineering students were tracked throughout the semester.

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## Data File
- **File:** `data.csv`
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
Students who **failed** studied more hours per week (mean ≈ 10.7, median = 11.0) than students who **passed** (mean ≈ 5.1, median = 4.3). This likely reflects reverse causality: struggling students increased study time in response to poor performance but still failed.
