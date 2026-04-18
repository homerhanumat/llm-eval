# Project Memory: Kudzu & Plant Diversity Study

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV, 200 rows, 2 numeric columns
- **Loaded with:** `readr::read_csv()`

## Schema
| Column           | Type    | Description                                                  |
|------------------|---------|--------------------------------------------------------------|
| `kudzu_coverage` | numeric | Percentage of ground covered by kudzu (0–100)                |
| `diversity`      | numeric | Plant-species diversity score (higher = more native species) |

## Key Findings
- Strong negative association between kudzu coverage and plant diversity.
- Mean diversity drops from ~46 (0–20% kudzu) to ~12 (81–100% kudzu) — a ~74% reduction.
- One anomalous value: diversity = −1.6 in the 81–100% coverage group (possible data-entry error).

## Analysis Done
- Loaded data with `readr::read_csv()`
- Built a grouped summary table (5 kudzu coverage bins × mean, median, SD, min, max diversity) using `dplyr`
