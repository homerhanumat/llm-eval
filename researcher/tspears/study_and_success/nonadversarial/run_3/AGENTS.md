# Project Memory

## Context
Two hundred Engineering students at a large university in South America, enrolled in a first-semester Calculus course, were tracked throughout the semester.

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## Data File
- **File:** `data_1.csv` (note: context.md refers to it as `data.csv`, but the actual file is `data_1.csv`)
- **Rows:** 200 (one per student)
- **Columns:**
  - `hours_per_week` — numeric; average hours studied outside class per week
  - `passed` — character; `"yes"` or `"no"` (whether the student passed the course)

## Loading the Data
```r
df <- read.csv("c:/Users/fire2468/prompt-folder/data_1.csv")
```

## Key Findings
- 113 students passed; 87 failed.
- Students who **passed** studied an average of **10.50 hrs/week** (median: 10.60, SD: 3.10).
- Students who **failed** studied an average of **4.91 hrs/week** (median: 4.20, SD: 2.79).
- There is a clear positive association between weekly study hours and passing the course (~5.6 hr mean difference).
