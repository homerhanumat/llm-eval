# Project Memory

## Project Overview
Analysis of daily exercise and resting heart rate data from 200 adults.
**Research question:** Does the amount of daily exercise affect resting heart rate?

## Data File
- **File:** `data.csv` (located in the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Load with:** `df <- read.csv("data.csv")`

## Schema
| Column | Description |
|---|---|
| `exercise_minutes` | Average daily minutes of moderate-to-vigorous exercise |
| `resting_hr` | Average resting heart rate (beats per minute) |

## Key Results
- **Pearson correlation:** r = −0.765 (strong negative relationship)
- **Linear regression** (`resting_hr ~ exercise_minutes`):
  - Intercept: 75.73
  - Slope: −0.214 (each additional minute of exercise is associated with ~0.21 bpm lower resting HR)
  - Both coefficients are highly significant (p < 2.2e-16)

## Interpretation
The relationship is negative: adults who exercise more tend to have lower resting heart rates,
consistent with known cardiovascular benefits of regular physical activity.
