# Project Memory

## Context
Two hundred Engineering students at a large university in South America, enrolled in a first-semester Calculus course, were tracked throughout the semester. The research question is: **Are students who study more hours per week more likely to pass the Calculus course?**

## Data File
- **File:** `data_1.csv` (note: context.md refers to `data.csv`, but the actual file is `data_1.csv`)
- **Rows:** 200 (one per student)
- **Columns:**
  - `hours_per_week` (numeric): average hours studied outside class per week
  - `passed` (character): whether the student passed — `"yes"` or `"no"`

## Loading the Data
```r
df <- read.csv("data_1.csv")
```

## Key Findings
- 113 students (56.5%) passed; 87 (43.5%) did not.
- Students who passed studied an average of **10.52 hrs/week** (median: 10.60).
- Students who did not pass studied an average of **4.91 hrs/week** (median: 4.20).
- The data strongly suggest a positive association between weekly study hours and passing the course.
