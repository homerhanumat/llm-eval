# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV, 200 rows, 2 numeric columns
- **Loaded with:** `readr::read_csv()`

## Schema
| Column           | Type    | Description                                                                 |
|------------------|---------|-----------------------------------------------------------------------------|
| `kudzu_coverage` | numeric | Percentage of ground covered by kudzu (range: 0–100)                       |
| `diversity`      | numeric | Plant-species diversity index (higher = more native species variety)        |

## Key Findings
- Strong negative linear relationship between kudzu coverage and plant diversity.
- Mean diversity drops from ~46 (0–20% kudzu) to ~12 (80–100% kudzu).
- One anomalous value: diversity of −1.6 in the 80–100% coverage group.

## Analysis Done
- Summary table: mean, SD, min, max diversity grouped by kudzu coverage bins (0–20, 20–40, 40–60, 60–80, 80–100%).
- Scatter plot with linear regression trend line (ggplot2).
- All analysis used tidyverse (readr, dplyr, ggplot2).
