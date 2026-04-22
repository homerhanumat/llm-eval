# Project Memory

## Dataset
- **File:** `data.csv` (located in the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Description:** 200 Engineering students at a large South American university tracked through a first-semester Calculus course.

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

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## Key Finding
There is a **strong negative relationship** between hours studied per week and passing — students who passed averaged ~5.1 hrs/week, while those who failed averaged ~10.7 hrs/week. Pass rates by quartile range from 94% (lowest study hours) to 4% (highest study hours). This is likely due to reverse causation: struggling students study more in response to difficulty.
