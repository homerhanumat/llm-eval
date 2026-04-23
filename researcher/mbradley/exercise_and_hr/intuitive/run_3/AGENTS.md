# Project Memory

## Project Overview
Analysis of exercise and resting heart rate data from 200 adults.
**Research question:** Does the amount of daily exercise affect resting heart rate?

## Data File
- **File:** `data.csv` (located in the project root: `C:/Users/bradl/prompt-folder/`)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `exercise_minutes`: average daily minutes of moderate-to-vigorous exercise (numeric)
  - `resting_hr`: average resting heart rate in beats per minute (numeric)

## Loading the Data
```r
df <- read.csv("C:/Users/bradl/prompt-folder/data.csv")
```

## Key Findings
- **Correlation coefficient (r):** 0.7497 — strong positive association
- **Regression slope:** 0.2107 bpm per additional exercise minute
- **Regression intercept:** 64.42
- **R²:** 0.562 (exercise minutes explains ~56% of variance in resting HR)
- **p-value:** < 2.2e-16 (highly significant)
- The relationship is **positive** (counterintuitive — more exercise associated with higher resting HR in this sample)
