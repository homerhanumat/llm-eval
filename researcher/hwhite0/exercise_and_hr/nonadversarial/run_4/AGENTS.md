# Project Memory

## Overview
This project analyzes the relationship between daily exercise and resting heart rate in 200 adults.

## Data File
- **File**: `data.csv` (in project root)
- **Format**: CSV, 200 rows, 2 columns
- **Columns**:
  - `exercise_minutes`: average daily minutes of moderate-to-vigorous exercise
  - `resting_hr`: average resting heart rate in beats per minute

## Loading the Data
```r
df <- read.csv("data.csv")
```

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Key Results
- **Correlation**: r = −0.765 (strong negative relationship)
- **Linear regression** (`resting_hr ~ exercise_minutes`):
  - Intercept: 75.73 bpm
  - Slope: −0.214 bpm per minute of exercise
  - R² = 0.585 (exercise explains ~58.5% of variance in resting HR)
  - Both coefficients significant at p < 2.2e-16
- **Interpretation**: More daily exercise is associated with a lower resting heart rate.
