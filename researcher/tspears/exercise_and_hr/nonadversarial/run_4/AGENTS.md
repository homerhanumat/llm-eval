# Project Memory

## Data File
- **Filename:** `data_1.csv` (located in project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `exercise_minutes`: average daily minutes of moderate-to-vigorous exercise (numeric)
  - `resting_hr`: average resting heart rate in beats per minute (numeric)
- **Population:** 200 adults

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Loading the Data
```r
df <- read.csv("data_1.csv")
```

## Key Results (as of 2026-04-20)
- **Pearson correlation (r):** −0.7650 (strong negative relationship)
- **Linear regression:** `resting_hr ~ exercise_minutes`
  - Intercept: 75.73
  - Slope: −0.2144 BPM per minute of exercise
  - R²: 0.585
  - p-value: < 2.2e-16 (highly significant)
- **Interpretation:** More daily exercise is associated with a lower resting heart rate (~0.21 BPM lower per additional minute of exercise).

## Notes
- No plots were produced; analysis was numerical only.
- The task instructions are stored in `context.md`.
