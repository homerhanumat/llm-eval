# Project Memory

## Overview
This project analyzes the relationship between daily exercise and resting heart rate in 200 adults.

**Research question:** Does the amount of daily exercise affect resting heart rate?

## Data File
- **File:** `data_1.csv` (note: context.md refers to it as `data.csv`, but the actual file is `data_1.csv`)
- **Format:** CSV, 200 data rows + 1 header row (202 lines total)
- **Columns:**
  - `exercise_minutes`: average daily minutes of moderate-to-vigorous exercise (numeric)
  - `resting_hr`: average resting heart rate in beats per minute (numeric)

## Loading the Data
```r
df <- read.csv("data_1.csv")
```

## Analysis Goals
- Numerical summary of both variables
- Correlation coefficient between `exercise_minutes` and `resting_hr`
- Slope of a simple linear regression: `resting_hr ~ exercise_minutes`
- Plain-language interpretation of the direction of the relationship
- No plots required — numerical output and brief interpretation only
