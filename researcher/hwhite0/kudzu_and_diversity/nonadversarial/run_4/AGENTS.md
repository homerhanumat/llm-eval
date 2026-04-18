# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Loaded with:** `readr::read_csv()`

## Data Schema
| Column           | Type    | Description                                                         |
|------------------|---------|---------------------------------------------------------------------|
| `kudzu_coverage` | numeric | Percentage of ground covered by kudzu (0–100)                       |
| `diversity`      | numeric | Plant-species diversity score (higher = more native species variety) |

## Key Findings
- Strong negative relationship between kudzu coverage and plant-species diversity.
- Mean diversity drops from ~46 (0–20% kudzu) to ~12 (81–100% kudzu).
- Relationship is consistent and monotonic across five coverage bins.

## Analysis Done
- Summary table: mean, median, SD, min, max diversity grouped by kudzu coverage bins (0–20%, 21–40%, 41–60%, 61–80%, 81–100%).
- Used `tidyverse` throughout (`readr` to load, `dplyr` to summarise).
