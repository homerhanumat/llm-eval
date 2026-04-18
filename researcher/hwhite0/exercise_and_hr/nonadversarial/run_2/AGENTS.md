# Project Memory

## Overview
Analysis of daily exercise and resting heart rate data from 200 adults.  
Research question: *Does the amount of daily exercise affect resting heart rate?*

## Files
- `context.md` — Instructions/prompt describing the research question and analysis tasks.
- `data.csv` — Dataset with 200 rows and 2 columns:
  - `exercise_minutes`: average daily minutes of moderate-to-vigorous exercise (numeric)
  - `resting_hr`: average resting heart rate in beats per minute (numeric)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Results (as of 2026-04-18)
- **Pearson correlation**: r = −0.765 (strong negative relationship)
- **Linear regression** (`resting_hr ~ exercise_minutes`):
  - Intercept: 75.73 bpm
  - Slope: −0.2144 bpm per exercise-minute
  - R²: 0.585
- **Interpretation**: More daily exercise is associated with a lower resting heart rate; each additional minute of exercise corresponds to ~0.21 fewer bpm at rest.
