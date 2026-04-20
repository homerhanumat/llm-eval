# Project Memory

## Context
Two hundred Engineering students at a large university in South America, enrolled in a first-semester Calculus course, were tracked throughout the semester. The research question is: **Are students who study more hours per week more likely to pass the Calculus course?**

## Data File
- **File:** `data_1.csv`
- **Rows:** 200 (one per student)
- **Columns:**
  - `hours_per_week` (numeric): average hours studied outside class per week
  - `passed` (character): whether the student passed — `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data_1.csv")
```

## Key Findings
- 113 students passed (56.5%), 87 did not (43.5%).
- Students who **passed** studied an average of **10.5 hrs/week** (median: 10.6 hrs).
- Students who **did not pass** studied an average of **4.9 hrs/week** (median: 4.2 hrs).
- The ~5.6-hour difference in means strongly supports the conclusion that more study time is associated with a higher likelihood of passing.
