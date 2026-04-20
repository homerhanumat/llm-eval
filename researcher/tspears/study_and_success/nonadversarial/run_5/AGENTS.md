# Project Memory

## Data File
- **File:** `data_1.csv` (located in the project root folder)
- **Format:** CSV, 200 rows, 2 columns

## Data Schema
| Column | Type | Description |
|--------|------|-------------|
| `hours_per_week` | numeric | Average hours per week a student studied outside of class |
| `passed` | character | Whether the student passed the course: `"yes"` or `"no"` |

## Study Context
- 200 first-semester Engineering students at a large South American university
- Enrolled in a Calculus course; tracked over one semester

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## How to Load the Data
```r
df <- read.csv("data_1.csv")
```

## Key Findings
- Students who passed averaged **10.50 hrs/week** (median: 10.6); those who did not averaged **4.91 hrs/week** (median: 4.2).
- The ~5.6-hour difference in means strongly suggests a positive association between study time and passing.
