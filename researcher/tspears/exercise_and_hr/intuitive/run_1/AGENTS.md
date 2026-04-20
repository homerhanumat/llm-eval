# Project Memory

## Project Overview
Analysis of the relationship between daily exercise and resting heart rate in 200 adults.

## Files
- `context.md` — Instructions/research question for the analysis
- `data_2.csv` — Main data file (note: the instructions refer to `data.csv`, but the actual file is `data_2.csv`)

## Data Schema (`data_2.csv`)
- **Rows:** 200 (one per adult)
- **Columns:**
  - `exercise_minutes`: average daily minutes of moderate-to-vigorous exercise (numeric)
  - `resting_hr`: average resting heart rate in beats per minute (numeric)

## Loading the Data
```r
df <- read.csv("data_2.csv")
```

## Key Results
- **Pearson correlation:** r = 0.7497 (strong positive)
- **Linear regression** (`resting_hr ~ exercise_minutes`):
  - Intercept: 64.42
  - Slope: 0.2107 (each extra minute of exercise → +0.21 bpm)
  - R² = 0.562, p < 2.2e-16
- **Finding:** Counterintuitively, more exercise is associated with a *higher* resting HR in this dataset — possible confounding or data quality issue worth investigating.
