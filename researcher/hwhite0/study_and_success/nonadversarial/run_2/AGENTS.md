# Project Memory

## Overview
Analysis of student performance in a first-semester Calculus course at a large South American university. 200 Engineering students were tracked to examine whether weekly study hours outside of class are associated with passing the course.

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## Data File
- **File:** `data.csv`
- **Rows:** 200 (one per student)
- **Columns:**
  - `hours_per_week` (numeric): average hours studied outside class per week
  - `passed` (character): `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Findings
- Students who passed averaged **10.5 hours/week** of study; those who did not averaged **4.9 hours/week**.
- Pass rates rise sharply with study time: from ~4% for students studying 0–3 hrs/week up to ~95% for those studying 12+ hrs/week.
- Overall pass rate: 56.5% (113 of 200 students passed).
