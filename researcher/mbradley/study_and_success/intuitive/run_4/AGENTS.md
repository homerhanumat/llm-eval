# Project Memory

## Dataset
- **File:** `data.csv` (located in the project folder)
- **Format:** CSV with 2 columns
- **Rows:** 200 students

## Schema
| Column | Type | Description |
|--------|------|-------------|
| `hours_per_week` | numeric | Average hours studied outside class per week |
| `passed` | character (`"yes"` / `"no"`) | Whether the student passed the Calculus course |

## Loading the Data
```r
library(tidyverse)
df <- read_csv("C:/Users/bradl/prompt-folder/data.csv")
```

## Context
- 200 Engineering students at a large South American university
- Enrolled in a first-semester Calculus course
- Tracked throughout the semester

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## Key Finding
Students who **failed** studied more hours on average (mean: 10.5 hrs/week) than students who **passed** (mean: 4.9 hrs/week). This counterintuitive result likely reflects that struggling students spent more time studying to compensate for difficulties.
