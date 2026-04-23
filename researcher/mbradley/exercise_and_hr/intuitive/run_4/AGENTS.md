# Project Memory: Exercise & Resting Heart Rate

## Project Overview
Analysis of the relationship between daily exercise and resting heart rate in 200 adults.

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Data File
- **File:** `data.csv` (located in the project root)
- **Format:** CSV, 200 rows × 2 columns
- **Columns:**
  - `exercise_minutes`: average daily minutes of moderate-to-vigorous exercise
  - `resting_hr`: average resting heart rate (beats per minute)

## Loading the Data
```r
df <- read.csv("data.csv")
```

## Key Results (as of 2026-04-23)
| Statistic | Value |
|---|---|
| Correlation coefficient (r) | 0.7497 |
| Regression intercept | 64.42 bpm |
| Regression slope | +0.2107 bpm per exercise minute |
| R² | 0.562 |

## Notable Finding
The relationship between exercise minutes and resting heart rate is **positive** (r ≈ 0.75, slope ≈ +0.21), which is counter-intuitive — regular aerobic exercise typically lowers resting heart rate. This warrants further investigation (e.g., outliers, confounding variables, measurement methods).
