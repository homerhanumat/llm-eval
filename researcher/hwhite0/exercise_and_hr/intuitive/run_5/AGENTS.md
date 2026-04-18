# Project Memory

## Project Overview
Analysis of exercise habits and resting heart rate in 200 adults.

## Files
- `data.csv` — Main dataset (200 rows, 2 columns)
- `context.md` — Instructions/research question for the analysis

## Data Schema (`data.csv`)
| Column | Type | Description |
|---|---|---|
| `exercise_minutes` | numeric | Average daily minutes of moderate-to-vigorous exercise |
| `resting_hr` | numeric | Average resting heart rate (beats per minute) |

## Loading the Data
```r
df <- read.csv("data.csv")
```

## Key Findings (as of 2026-04-18)
- **n = 200** adults
- **Correlation:** r = 0.7497 (positive)
- **Regression (resting_hr ~ exercise_minutes):**
  - Intercept: 64.42 bpm
  - Slope: +0.21 bpm per exercise minute
  - R² = 0.562, p < 2.2e-16
- The relationship is **unexpectedly positive** — more exercise is associated with higher resting HR in this dataset, which is atypical of real-world data and may reflect data generation artefacts or confounding.
