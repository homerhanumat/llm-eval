# Project Memory

## Context
Two hundred Engineering students at a large university in South America, enrolled in a first-semester Calculus course, were tracked throughout the semester.

**Research question:** Are students who study more hours per week more likely to pass the Calculus course?

## Data File
- **File:** `data_2.csv` (note: context.md refers to `data.csv`, but the actual file is `data_2.csv`)
- **Location:** `c:/Users/fire2468/prompt-folder/data_2.csv`
- **Rows:** 200 (one per student)
- **Columns:**
  - `hours_per_week` (numeric): average hours studied outside class per week
  - `passed` (character): `"yes"` or `"no"` — whether the student passed the course

## Loading the Data
```r
df <- read.csv("c:/Users/fire2468/prompt-folder/data_2.csv")
```

## Key Findings
- Students who **passed** (n = 95) studied an average of **5.1 hrs/week** (median 4.3 hrs).
- Students who **did not pass** (n = 105) studied an average of **10.7 hrs/week** (median 11.0 hrs).
- Counterintuitively, students who studied more hours were *less* likely to pass — likely because struggling students compensate by studying more.
