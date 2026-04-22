# Project Memory

## Dataset
- **File:** `data.csv`
- **Format:** CSV, 200 rows, 2 columns
- **Description:** 200 Engineering students at a large South American university tracked through a first-semester Calculus course.

## Schema
| Column | Type | Description |
|--------|------|-------------|
| `hours_per_week` | numeric | Average hours per week studied outside of class |
| `passed` | character (`"yes"` / `"no"`) | Whether the student passed the course |

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## Key Finding
There is a strong **negative** relationship between hours studied and passing: students who passed averaged ~5.1 hrs/week, while those who failed averaged ~10.7 hrs/week. This is likely due to reverse causation — struggling students study more in response to difficulty.
