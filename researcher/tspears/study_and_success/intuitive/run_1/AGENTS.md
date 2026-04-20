# Project Memory

## Dataset
- **File:** `data_2.csv` (note: the context.md refers to `data.csv`, but the actual file is `data_2.csv`)
- **Location:** `C:/Users/fire2468/prompt-folder/data_2.csv`
- **Rows:** 200 (one per student)
- **Columns:**
  - `hours_per_week` (numeric): average hours per week studied outside of class
  - `passed` (character): whether the student passed the course (`"yes"` or `"no"`)

## Loading the Data
```r
df <- read.csv("C:/Users/fire2468/prompt-folder/data_2.csv")
```

## Research Context
- 200 Engineering students at a large South American university, enrolled in a first-semester Calculus course.
- **Research question:** Are students who study more hours per week more likely to pass?

## Key Finding
- Students who **failed** studied more on average (~10.7 hrs/week) than students who **passed** (~5.1 hrs/week).
- This counterintuitive result likely reflects a confounding effect: struggling students compensated by studying more, while students who grasped the material easily needed less study time.
- 105 students failed, 95 passed.
