# Project Memory

## Dataset
- **File:** `data.csv` (located in the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Description:** 200 Engineering students at a large South American university, tracked through a first-semester Calculus course.

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

## Key Findings
- 113 students passed (56.5%), 87 did not (43.5%).
- Students who **passed** averaged **10.5 hrs/wk** (median 10.6, SD 3.1).
- Students who **did not pass** averaged **4.9 hrs/wk** (median 4.2, SD 2.8).
- Strong positive association between study hours and passing (~5.6 hr difference in means).
