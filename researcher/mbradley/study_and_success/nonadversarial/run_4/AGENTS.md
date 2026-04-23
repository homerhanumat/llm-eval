# Project Memory

## Overview
Study of 200 first-semester Calculus students at a large South American university.
Research question: Are students who study more hours per week more likely to pass the course?

## Data File
- **File**: `data.csv`
- **Format**: CSV, 200 rows, 2 columns, no missing values

## Schema
| Column | Type | Description |
|--------|------|-------------|
| `hours_per_week` | numeric | Average hours studied outside class per week |
| `passed` | character (`"yes"` / `"no"`) | Whether the student passed the course |

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Findings
- Students who **passed** (n = 113) averaged **10.5 hrs/week** (median 10.6, SD 3.1).
- Students who **did not pass** (n = 87) averaged **4.9 hrs/week** (median 4.2, SD 2.8).
- The ~5.5-hour gap strongly supports the conclusion that more study time is associated with a higher likelihood of passing.
