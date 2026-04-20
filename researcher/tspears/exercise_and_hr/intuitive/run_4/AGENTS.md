# Project Memory

## Project Overview
Analysis of the relationship between daily exercise and resting heart rate in 200 adults.

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Data File
- **File:** `data_2.csv` (note: the instructions reference `data.csv`, but the actual file is `data_2.csv`)
- **Rows:** 200
- **Columns:**
  - `exercise_minutes`: average daily minutes of moderate-to-vigorous exercise
  - `resting_hr`: average resting heart rate in beats per minute

## Loading the Data
```r
df <- read.csv("data_2.csv")
```

## Key Results
- **Correlation coefficient (r):** 0.7497
- **Regression slope:** 0.2107 bpm per exercise minute
- **Regression intercept:** 64.42 bpm
- **R²:** 0.562
- **p-value:** < 2.2e-16

## Notes
- The relationship between `exercise_minutes` and `resting_hr` is **positive**, which is counterintuitive (normally more exercise → lower resting HR).
- This may indicate confounding factors, reversed coding, or the data being synthetic.
- Analysis was performed with no plots — numerical summaries and regression only.
