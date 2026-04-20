# Project Memory

## Project Overview
Analysis of the relationship between daily exercise and resting heart rate in 200 adults.

**Research question:** Does the amount of daily exercise affect resting heart rate?

## Data File
- **File:** `data_2.csv` (note: `data.csv` was referenced in `context.md` but the actual file present is `data_2.csv`)
- **Format:** CSV
- **Rows:** 200 (one per adult)

## Schema
| Column | Description |
|---|---|
| `exercise_minutes` | Average daily minutes of moderate-to-vigorous exercise |
| `resting_hr` | Average resting heart rate (beats per minute) |

## Analysis Goals
- Numerical summary of both variables
- Correlation coefficient between `exercise_minutes` and `resting_hr`
- Slope of a simple linear regression: `resting_hr ~ exercise_minutes`
- Plain-language interpretation of the direction of the relationship

## Notes
- No plots required — numerical output and brief written interpretation only
