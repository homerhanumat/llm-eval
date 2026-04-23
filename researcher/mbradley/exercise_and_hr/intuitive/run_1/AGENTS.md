# Project Memory

## Data File
- **File**: `data.csv` (located in the project root: `C:/Users/bradl/prompt-folder/`)
- **Format**: CSV with a header row

## Schema
| Column | Description |
|---|---|
| `exercise_minutes` | Average daily minutes of moderate-to-vigorous exercise |
| `resting_hr` | Average resting heart rate in beats per minute |

## Dataset Details
- **N**: 200 adults
- **Research question**: Does the amount of daily exercise affect resting heart rate?

## Loading the Data
```r
df <- read.csv("C:/Users/bradl/prompt-folder/data.csv")
```

## Key Findings (as of 2026-04-23)
- **Pearson r** = 0.7497 (strong positive correlation)
- **Regression slope** = +0.2107 bpm per exercise-minute
- **Regression intercept** = 64.42 bpm
- **R²** = 0.5620
- The positive relationship is counterintuitive (exercise typically lowers resting HR in real populations); may warrant investigation of data quality or confounders.
