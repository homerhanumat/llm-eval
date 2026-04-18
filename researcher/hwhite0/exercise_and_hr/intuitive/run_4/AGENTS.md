# Project Memory

## Data File

- **File:** `data.csv`
- **Format:** CSV, 200 rows, 2 columns
- **Location:** project root (`/Users/homer/git/prompt-folder/data.csv`)

## Schema

| Column | Type | Description |
|--------|------|-------------|
| `exercise_minutes` | numeric | Average daily minutes of moderate-to-vigorous exercise |
| `resting_hr` | numeric | Average resting heart rate (beats per minute) |

## Loading the Data

```r
df <- read.csv("data.csv")
```

## Research Question

Does the amount of daily exercise affect resting heart rate?

## Key Findings (as of 2026-04-18)

- **Correlation (r):** 0.7497 (strong positive)
- **Regression slope:** +0.2107 bpm per minute of exercise (p < 2.2e-16)
- **Intercept:** 64.42 bpm
- **R²:** 0.562
- The relationship is unexpectedly **positive** — more exercise is associated with higher resting heart rate. This is counterintuitive and may reflect confounding, reverse causality, or a data artifact.
