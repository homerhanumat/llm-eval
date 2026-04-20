# Project Memory

## Project Overview
Analysis of the relationship between daily exercise and resting heart rate in 200 adults.

## Files
- `context.md` — Instructions/research question for the analysis
- `data_1.csv` — Main data file (note: named `data_1.csv`, not `data.csv`)

## Data Schema (`data_1.csv`)
- **Rows:** 200 (one per adult)
- **Columns:**
  - `exercise_minutes` — Average daily minutes of moderate-to-vigorous exercise
  - `resting_hr` — Average resting heart rate in beats per minute (bpm)

## Loading the Data
```r
df <- read.csv("data_1.csv")
```

## Key Findings
- **Correlation (r):** −0.765 (strong negative relationship)
- **Regression slope:** −0.2144 bpm per minute of exercise
- **Regression intercept:** 75.73 bpm
- **Interpretation:** More daily exercise is associated with lower resting heart rate; each additional minute of exercise corresponds to ~0.21 bpm decrease in resting HR.
