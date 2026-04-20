# Project Memory

## Context
Two hundred Engineering students at a large university in South America, enrolled in a first-semester Calculus course, were tracked throughout the semester.

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## Data File
- **File:** `data_2.csv` (note: named `data_2.csv`, not `data.csv`)
- **Location:** `C:/Users/fire2468/prompt-folder/data_2.csv`
- **Rows:** 200 (one per student)
- **Columns:**
  - `hours_per_week` (numeric): average hours studied outside class per week
  - `passed` (character): whether the student passed — `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
df <- read_csv("C:/Users/fire2468/prompt-folder/data_2.csv")
```

## Key Finding
Counter-intuitively, students who **failed** studied more hours on average than those who passed:
- **Failed (n=105):** mean = 10.73 hrs/week, median = 11.0 hrs/week
- **Passed (n=95):** mean = 5.09 hrs/week, median = 4.30 hrs/week

A likely explanation is reverse causality: students with stronger prior math backgrounds needed fewer hours and passed easily, while weaker students studied more but still struggled.
EOF 2>&1
