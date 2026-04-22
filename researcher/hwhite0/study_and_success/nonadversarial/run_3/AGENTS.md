# Project Memory

## Overview
Analysis of 200 first-semester Engineering students at a large South American university enrolled in a Calculus course. The research question is whether students who study more hours per week are more likely to pass.

## Data File
- **File:** `data.csv`
- **Format:** CSV, 200 rows × 2 columns
- **Columns:**
  - `hours_per_week` (numeric): average hours studied outside class per week
  - `passed` (character): `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Findings
- 113 students passed (56.5%), 87 did not (43.5%).
- Mean study hours: **10.5 hrs/week** (passed) vs. **4.9 hrs/week** (did not pass).
- Pass rate rises steeply with study time: ~4% for <3 hrs/week up to ~95% for 12+ hrs/week.
- Strong positive association between weekly study hours and passing.

## Instructions
- The prompt/task description is in `context.md`.
