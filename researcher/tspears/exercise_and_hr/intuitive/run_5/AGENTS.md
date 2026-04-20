# Project Memory

## Data File
- **File:** `data_2.csv` (located in the project root `prompt-folder/`)
- **Format:** CSV, 200 rows × 2 columns
- **Columns:**
  - `exercise_minutes`: average daily minutes of moderate-to-vigorous exercise (numeric)
  - `resting_hr`: average resting heart rate in beats per minute (numeric)
- **Population:** 200 adults

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Loading the Data
```r
df <- read.csv("C:/Users/fire2468/prompt-folder/data_2.csv")
```

## Key Findings (as of 2026-04-20)
- **Correlation:** r = 0.7497 (strong positive association)
- **Linear regression** (`resting_hr ~ exercise_minutes`):
  - Intercept: 64.42 bpm
  - Slope: 0.21 bpm per additional minute of exercise
  - R² = 0.562
- **Note:** The positive direction is counter to typical physiology expectations (more exercise usually *lowers* resting HR). The data should be verified for potential measurement or encoding issues.
