# Project Memory

## Context
Study of 200 first-semester Engineering students at a large South American university enrolled in Calculus.

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## Data File
- **File:** `data_2.csv` (note: context.md refers to it as `data.csv`, but the actual file is `data_2.csv`)
- **Rows:** 200 (one per student)
- **Columns:**
  - `hours_per_week` — numeric; average hours studied outside class per week
  - `passed` — character; `"yes"` or `"no"`

## Loading the Data
```r
df <- read.csv("c:/Users/fire2468/prompt-folder/data_2.csv")
```

## Key Finding
Counterintuitive negative relationship: students who studied **more** hours were **less** likely to pass. Likely reflects reverse causation (struggling students study more). Pass rates by bracket:
- 0–4 hrs/week → 95.3% pass rate
- 4–8 hrs/week → 67.3% pass rate
- 8–12 hrs/week → 28.6% pass rate
- 12+ hrs/week → 2.4% pass rate
