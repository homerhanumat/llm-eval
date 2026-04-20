# Project Memory

## Project Overview
Analysis of the relationship between daily exercise and resting heart rate in 200 adults.

## Files
- `context.md` — Instructions/research question for the analysis
- `data_1.csv` — Main data file (note: named `data_1.csv`, not `data.csv`)

## Data Schema
- **`exercise_minutes`**: Average daily minutes of moderate-to-vigorous exercise (numeric)
- **`resting_hr`**: Average resting heart rate in beats per minute (numeric)
- **Rows**: 200 (one per adult)

## Loading the Data
```r
df <- read.csv("C:/Users/fire2468/prompt-folder/data_1.csv")
```

## Key Results (as of 2026-04-20)
- **Correlation coefficient (r)**: −0.765 (strong negative relationship)
- **Regression slope**: −0.2144 bpm per exercise minute
- **Intercept**: 75.73 bpm
- **R²**: 0.585

## Interpretation
More daily exercise is associated with a lower resting heart rate. Each additional minute of daily exercise corresponds to approximately a 0.21 bpm decrease in resting heart rate.
