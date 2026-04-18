# Project Memory

## Files
- `data.csv` — CSV file with 200 rows and 2 columns
- `context.md` — Instructions describing the research question and analysis tasks

## Data Schema (`data.csv`)
| Column | Type | Description |
|--------|------|-------------|
| `exercise_minutes` | numeric | Average daily minutes of moderate-to-vigorous exercise per adult |
| `resting_hr` | numeric | Average resting heart rate (beats per minute) per adult |

- **Rows:** 200 adults
- **No missing values observed**

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Loading the Data
```r
df <- read.csv("data.csv")
```

## Key Results (as of 2026-04-18)
- **Correlation:** r = −0.765 (strong negative relationship)
- **Regression slope:** −0.214 bpm per minute of exercise (p < 2e-16)
- **Interpretation:** More daily exercise is associated with lower resting heart rate (~0.21 bpm lower per additional minute of exercise)
