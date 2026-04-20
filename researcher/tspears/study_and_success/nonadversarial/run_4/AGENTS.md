# Project Memory

## Context

Two hundred Engineering students at a large university in South America, enrolled in a first-semester Calculus course, were tracked throughout the semester.

**Research question:** Are students who study more hours per week more likely to pass the Calculus course?

## Data File

- **File:** `data_1.csv` (note: context.md refers to `data.csv`, but the actual file is `data_1.csv`)
- **Location:** `c:/Users/fire2468/prompt-folder/data_1.csv`
- **Rows:** 200 (one per student)
- **Columns:**
  - `hours_per_week` (numeric): average hours studied outside class per week
  - `passed` (character): whether the student passed — `"yes"` or `"no"`

## Loading the Data

```r
df <- read.csv("c:/Users/fire2468/prompt-folder/data_1.csv")
```

## Key Findings

- 113 students passed; 87 did not.
- Students who **passed** studied an average of **10.5 hrs/week** (median: 10.6, SD: 3.1).
- Students who **did not pass** studied an average of **4.9 hrs/week** (median: 4.2, SD: 2.8).
- Students who passed studied roughly **twice as many hours** as those who did not — strong evidence that more study time is associated with passing.
