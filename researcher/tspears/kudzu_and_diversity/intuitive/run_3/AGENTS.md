# Project Memory: Kudzu & Plant Diversity Study

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data_2.csv` (located at the project root)
- **Note:** The context.md refers to `data.csv`, but the actual file is `data_2.csv`
- **Format:** CSV, 200 rows, 2 columns
- **Delimiter:** Comma

## Schema
| Column           | Type    | Description                                                  |
|------------------|---------|--------------------------------------------------------------|
| `kudzu_coverage` | numeric | Percentage of ground covered by kudzu (0–100)               |
| `diversity`      | numeric | Plant-species diversity score (higher = more native species) |

## Loading the Data
```r
library(tidyverse)
kudzu <- read_csv("data_2.csv")
```

## Analysis Conducted
- Grouped `kudzu_coverage` into 5 bins: 0–20%, 21–40%, 41–60%, 61–80%, 81–100%
- Computed mean, median, SD, min, and max of `diversity` per group
- Found a **U-shaped (non-linear) pattern**: diversity dips at moderate coverage (41–60%) but rebounds at high coverage (81–100%), contrary to a simple negative relationship
- High within-group variability suggests kudzu coverage alone is a weak predictor of diversity
EOF 2>&1
