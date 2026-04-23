# Project Memory

## Project Overview
Analysis of the relationship between daily exercise and resting heart rate in 200 adults.

## Data File
- **File:** `data.csv` (located in the project root: `C:/Users/bradl/prompt-folder/`)
- **Format:** CSV, 200 rows × 2 columns
- **No missing values detected**

## Data Schema
| Column | Description |
|---|---|
| `exercise_minutes` | Average daily minutes of moderate-to-vigorous exercise |
| `resting_hr` | Average resting heart rate (beats per minute) |

## Loading the Data
```r
df <- read.csv("C:/Users/bradl/prompt-folder/data.csv")
```

## Key Findings
- **Correlation coefficient (r):** −0.765 (strong negative relationship)
- **Regression slope:** −0.2144 bpm per exercise minute
- **Regression intercept:** 75.73 bpm
- **Equation:** `resting_hr = 75.73 − 0.2144 × exercise_minutes`
- More daily exercise is associated with a lower resting heart rate.
