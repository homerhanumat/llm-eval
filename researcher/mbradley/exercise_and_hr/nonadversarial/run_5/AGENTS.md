# Project Memory

## Project Overview
Analysis of daily exercise and resting heart rate data from 200 adults.
**Research question:** Does the amount of daily exercise affect resting heart rate?

## Data File
- **File:** `data.csv` (located in project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `exercise_minutes`: average daily minutes of moderate-to-vigorous exercise
  - `resting_hr`: average resting heart rate in beats per minute

## Loading the Data
```r
df <- read.csv("data.csv")
```

## Key Results
- **Pearson correlation:** r = −0.765 (strong negative relationship)
- **Linear regression** (`resting_hr ~ exercise_minutes`):
  - Intercept: 75.73 bpm
  - Slope: −0.2144 bpm per minute of exercise
  - R² = 0.585
- **Interpretation:** More daily exercise is associated with a lower resting heart rate (~0.21 bpm decrease per additional minute of exercise).
