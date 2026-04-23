# Project Memory

## Project Overview
Analysis of exercise habits and resting heart rate in 200 adults.

## Data File
- **File**: `data.csv` (located in the project root)
- **Format**: CSV, 200 rows, 2 columns
- **Columns**:
  - `exercise_minutes`: average daily minutes of moderate-to-vigorous exercise
  - `resting_hr`: average resting heart rate in beats per minute

## How to Load
```r
df <- read.csv("data.csv")
```

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Key Findings (as of 2026-04-23)
- **Pearson correlation**: r = −0.765 (strong negative relationship)
- **Linear regression** (`resting_hr ~ exercise_minutes`):
  - Intercept: 75.73
  - Slope: −0.2144 (each extra minute of exercise is associated with ~0.21 bpm lower resting HR)
  - Both coefficients highly significant (p < 2e-16)
- **Interpretation**: Adults who exercise more tend to have lower resting heart rates.
