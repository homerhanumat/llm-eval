# Project Memory

## Dataset
- **File:** `data.csv` (located in the project root)
- **Rows:** 200 (one per student)
- **Format:** CSV, comma-delimited

## Schema
| Column | Type | Description |
|--------|------|-------------|
| `hours_per_week` | numeric | Average hours studied outside class per week |
| `passed` | character (`"yes"` / `"no"`) | Whether the student passed the course |

## Context
- 200 first-semester Calculus students at a large South American university
- Research question: Are students who study more hours per week more likely to pass?

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Finding
Students who passed studied ~10.5 hrs/week on average (median 10.6); students who failed studied ~4.9 hrs/week (median 4.2) — roughly double the study time for the passing group.
EOF 2>&1
