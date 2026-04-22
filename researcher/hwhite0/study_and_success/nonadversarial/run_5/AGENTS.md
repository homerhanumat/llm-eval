# Project Memory

## Overview
Study of 200 Engineering students enrolled in a first-semester Calculus course at a large university in South America. The research question is whether students who study more hours per week are more likely to pass the course.

## Data File
- **File:** `data.csv`
- **Rows:** 200 (one per student)
- **Columns:**
  - `hours_per_week` (numeric): average hours studied outside class per week
  - `passed` (character): `"yes"` or `"no"` — whether the student passed the course

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Notes
- No missing values observed in either column.
- `hours_per_week` ranges from ~1 to 15 hours.
- 113 students passed (56.5%), 87 failed (43.5%).
- Strong positive association between study hours and pass rate.
