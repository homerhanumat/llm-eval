# Project Memory

## Data File
- **File:** `data.csv` (located in the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Source:** 200 adults

## Schema
| Column | Description |
|---|---|
| `exercise_minutes` | Average daily minutes of moderate-to-vigorous exercise |
| `resting_hr` | Average resting heart rate (beats per minute) |

## How to Load
```r
df <- read.csv("C:/Users/bradl/prompt-folder/data.csv")
```

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Key Findings (as of 2026-04-23)
- **Pearson correlation (r):** 0.7497 — strong positive association
- **Regression slope:** +0.2107 bpm per exercise minute
- **Intercept:** 64.42 bpm
- **R²:** 0.562
- The relationship is **positive** (more exercise → higher resting HR in this sample), which is counterintuitive; potential confounding should be investigated.
