# Project Memory

## Overview
Analysis of exercise habits and resting heart rate in 200 adults.

## Files
- `data.csv` — Main dataset (200 rows, 2 columns)
- `context.md` — Research question and instructions for the analysis

## Data Schema (`data.csv`)
| Column | Type | Description |
|---|---|---|
| `exercise_minutes` | numeric | Average daily minutes of moderate-to-vigorous exercise |
| `resting_hr` | numeric | Average resting heart rate (beats per minute) |

## Loading the Data
```r
df <- read.csv("data.csv")
```

## Key Findings
- **Correlation coefficient**: r = 0.7497 (strong positive association)
- **Regression slope**: 0.2107 bpm per additional minute of daily exercise
- **R²**: 0.562; slope p-value < 2.2e-16
- The direction of the relationship is **positive** (more exercise → higher resting HR), which is counterintuitive and may reflect confounding variables not present in the dataset (e.g., age, health status).

## Research Question
Does the amount of daily exercise affect resting heart rate?
