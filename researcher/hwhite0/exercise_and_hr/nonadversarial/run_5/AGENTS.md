# Project Memory

## Data File
- **`data.csv`** — located in the project root

## Schema
| Column | Type | Description |
|--------|------|-------------|
| `exercise_minutes` | numeric | Average daily minutes of moderate-to-vigorous exercise |
| `resting_hr` | numeric | Average resting heart rate (beats per minute) |

- **200 rows** (one per adult participant)

## Loading the Data
```r
df <- read.csv("data.csv")
```

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Key Findings
- **Correlation** between `exercise_minutes` and `resting_hr`: **r = −0.765** (strong negative)
- **Linear regression** (`resting_hr ~ exercise_minutes`):
  - Intercept: **75.73 bpm**
  - Slope: **−0.2144 bpm per minute of exercise**
  - R² = 0.585; p-value < 2.2 × 10⁻¹⁶
- Adults who exercise more tend to have lower resting heart rates.
