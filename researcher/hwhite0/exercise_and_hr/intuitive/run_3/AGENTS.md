# Project Memory

## Data File
- **File:** `data.csv` (located in the project root)
- **Format:** CSV, no special encoding issues

## Data Schema
| Column | Type | Description |
|---|---|---|
| `exercise_minutes` | numeric | Average daily minutes of moderate-to-vigorous exercise |
| `resting_hr` | numeric | Average resting heart rate (beats per minute) |

- **Rows:** 200 adults
- **No missing values observed**

## Loading the Data
```r
df <- read.csv("data.csv")
```

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Key Findings
- **Correlation (Pearson's r):** 0.7497 (strong positive association)
- **Regression slope:** 0.2107 bpm per minute of exercise
- **Regression intercept:** 64.42 bpm
- **R²:** 0.562
- **p-value (slope):** < 2.2e-16
- The data show a **positive** relationship (more exercise → higher resting HR), which is counterintuitive physiologically and may reflect simulated or confounded data.
