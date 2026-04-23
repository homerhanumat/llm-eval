# Project Memory

## Context

Two hundred Engineering students at a large university in South America, enrolled in a first-semester Calculus course, were tracked throughout the semester.

**Research question:** Are students who study more hours per week more likely to pass the Calculus course?

## Data File

- **File:** `data.csv` (located in the project root folder)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `hours_per_week` — numeric; average hours per week studied outside of class
  - `passed` — character; `"yes"` or `"no"` indicating whether the student passed

## Loading the Data

```r
df <- read.csv("data.csv")
```

## Key Finding

Students who **failed** studied more hours on average (mean: 10.5 hrs/week) than students who **passed** (mean: 4.9 hrs/week). This counterintuitive result is likely due to reverse causation — struggling students increased study time in response to difficulty, while students with stronger prior preparation needed less time.
