# Project Memory

## Context
Two hundred Engineering students at a large university in South America, enrolled in a first-semester Calculus course, were tracked throughout the semester.

## Data File
- **File**: `data.csv` (located in the project root folder)
- **Format**: CSV, 200 rows, 2 columns
- **Columns**:
  - `hours_per_week` (numeric): average hours per week studied outside of class
  - `passed` (character): whether the student passed the course (`"yes"` or `"no"`)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## Key Finding
Counter-intuitively, students who **passed** studied *fewer* hours on average than students who failed:
- Passed (n=88, 44%): mean = 4.90 hrs/week, median = 4.25 hrs/week
- Failed (n=112, 56%): mean = 10.50 hrs/week, median = 10.60 hrs/week

A likely explanation is reverse causality: struggling students studied more in response to difficulty, but still could not pass.
