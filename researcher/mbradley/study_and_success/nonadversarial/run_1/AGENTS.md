# Project Memory

## Context
200 Engineering students at a large university in South America, enrolled in a first-semester Calculus course. The research question is: **Are students who study more hours per week more likely to pass the Calculus course?**

## Data File
- **File:** `data.csv` (in project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `hours_per_week` (numeric): average hours per week studied outside of class
  - `passed` (character): whether the student passed — `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Findings
- Students who **passed** (n = 113) studied an average of **10.5 hrs/week** (median: 10.6, SD: 3.1).
- Students who **did not pass** (n = 87) studied an average of **4.9 hrs/week** (median: 4.2, SD: 2.8).
- The ~5.6-hour gap in means strongly supports the conclusion that more study time is associated with a higher likelihood of passing.
