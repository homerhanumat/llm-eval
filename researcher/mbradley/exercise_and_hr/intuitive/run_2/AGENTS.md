# Project Memory

## Data File
- **File**: `data.csv` (located in `C:/Users/bradl/prompt-folder/`)
- **Format**: CSV, 200 rows × 2 columns, no missing values

## Schema
| Column | Description |
|--------|-------------|
| `exercise_minutes` | Average daily minutes of moderate-to-vigorous exercise (range: 0.40–89.80) |
| `resting_hr` | Average resting heart rate in beats per minute (range: 55.00–93.60) |

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Loading the Data
```r
df <- read.csv("C:/Users/bradl/prompt-folder/data.csv")
```

## Key Results (as of 2026-04-23)
- **Pearson correlation**: r = 0.7497 (strong positive)
- **Linear regression** (`resting_hr ~ exercise_minutes`):
  - Intercept: 64.42
  - Slope: +0.2107 (each additional exercise minute associated with +0.21 bpm)
  - R² = 0.562
- **Note**: The positive relationship is counter to typical physiological expectations; possible confounding or data collection issues worth investigating.
