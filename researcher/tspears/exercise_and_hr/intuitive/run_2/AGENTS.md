# Project Memory

## Project Overview
Analysis of exercise habits and resting heart rate in 200 adults.
Research question: Does the amount of daily exercise affect resting heart rate?

## Data File
- **File:** `data_2.csv` (note: the task refers to `data.csv`, but the actual file is `data_2.csv`)
- **Rows:** 200
- **Columns:**
  - `exercise_minutes`: average daily minutes of moderate-to-vigorous exercise (numeric)
  - `resting_hr`: average resting heart rate in beats per minute (numeric)

## How to Load
```r
df <- read.csv("data_2.csv")
```

## Key Findings
- **Correlation:** r = 0.7497 (strong positive correlation)
- **Regression slope:** 0.2107 bpm per exercise minute
- **Intercept:** 64.42 bpm
- **R²:** 0.562 (exercise minutes explains ~56% of variance in resting HR)
- **p-value:** < 2.2e-16 (highly significant)
- ⚠️ The positive direction is counterintuitive (more exercise → higher resting HR); may reflect synthetic data or confounding variables.
