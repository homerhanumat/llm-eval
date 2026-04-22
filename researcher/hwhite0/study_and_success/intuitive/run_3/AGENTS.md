# Project Memory

## Dataset
- **File:** `data.csv` (located in the project root)
- **Format:** CSV with 2 columns
- **Rows:** 200 (one per student)

## Schema
| Column | Type | Description |
|--------|------|-------------|
| `hours_per_week` | numeric | Average hours per week studied outside of class |
| `passed` | character (`"yes"` / `"no"`) | Whether the student passed the Calculus course |

## Context
- 200 Engineering students at a large South American university
- Enrolled in a first-semester Calculus course
- Research question: Are students who study more hours per week more likely to pass?

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Finding
Students who **failed** studied more hours on average (mean: 10.7 hrs/week) than students who **passed** (mean: 5.1 hrs/week). This counterintuitive result likely reflects a self-selection effect — struggling students increased study time in response to difficulty.
