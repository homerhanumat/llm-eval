# Project Memory

## Files
- `data.csv` — main data file (200 rows, 2 columns)
- `context.md` — analysis prompt / research question

## Data Schema (`data.csv`)
| Column             | Type    | Description                                               |
|--------------------|---------|-----------------------------------------------------------|
| `exercise_minutes` | numeric | Average daily minutes of moderate-to-vigorous exercise    |
| `resting_hr`       | numeric | Average resting heart rate (beats per minute)             |

- 200 adult participants, no missing values
- Load in R with: `df <- read.csv("data.csv")`

## Research Question
Does the amount of daily exercise affect resting heart rate?

## Key Results
- **Pearson r = 0.75** (positive correlation)
- **Linear regression slope = +0.21 bpm per exercise minute** (intercept ≈ 64.4 bpm)
- Relationship is statistically significant (p < 2.4 × 10⁻³⁷)
- Finding is counterintuitive: more exercise is associated with *higher* resting HR in this sample
