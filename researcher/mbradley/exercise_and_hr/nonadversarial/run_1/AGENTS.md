# Project Memory

## Data File
- **File:** `data.csv` (located in project root: `C:/Users/bradl/prompt-folder/`)
- **Format:** CSV, no special encoding issues
- **Rows:** 200 (one per adult participant)
- **Columns:**
  - `exercise_minutes` — average daily minutes of moderate-to-vigorous exercise
  - `resting_hr` — average resting heart rate (beats per minute)

## Loading the Data
```r
df <- read.csv("C:/Users/bradl/prompt-folder/data.csv")
```

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Key Findings (as of 2026-04-23)
- **Correlation:** r = −0.765 (strong negative relationship)
- **Regression slope:** −0.2144 bpm per minute of exercise
- **Intercept:** 75.73 bpm
- **R²:** 0.585
- **p-value:** < 2.2 × 10⁻¹⁶ (highly significant)
- **Interpretation:** More daily exercise is associated with a lower resting heart rate.
