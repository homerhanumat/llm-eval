# Project Memory

## Overview
This project analyzes the relationship between daily exercise and resting heart rate in 200 adults.

## Data File
- **File**: `data.csv`
- **Format**: CSV, 200 rows, 2 columns
- **Columns**:
  - `exercise_minutes`: average daily minutes of moderate-to-vigorous exercise
  - `resting_hr`: average resting heart rate (beats per minute)

## Loading the Data
```r
df <- read.csv("data.csv")
```

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Key Findings
- **Correlation coefficient (r)**: −0.7650 (strong negative relationship)
- **Regression slope**: −0.2144 bpm per exercise minute
- **Regression intercept**: 75.73 bpm
- **R²**: 0.5852
- **Interpretation**: Adults who exercise more tend to have lower resting heart rates; each additional minute of daily exercise is associated with ~0.21 bpm lower resting HR.

## Instructions File
- `context.md`: Contains the analysis prompt/research question.
