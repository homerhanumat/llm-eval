# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data.csv` (root of project)
- **Format:** CSV, 200 rows, 2 columns
- **Loaded with:** `readr::read_csv()`

## Schema
| Column | Type | Description |
|---|---|---|
| `kudzu_coverage` | double | Percentage of ground covered by kudzu (0–100) |
| `diversity` | double | Plant-species diversity index (higher = more native species) |

## Key Findings
- The relationship between kudzu coverage and diversity is **U-shaped**, not linear.
- Diversity is high at low coverage (0–20%, mean ~2,334), drops sharply at moderate coverage (41–60%, mean ~717), then rises again at high coverage (81–100%, mean ~2,416).
- A simple "more kudzu = less diversity" hypothesis is **not supported** by the data.
- The most notable pattern is a diversity trough at moderate kudzu coverage (~40–70%).

## Analysis Done
- Summary table: mean, median, SD, min, max diversity grouped by kudzu coverage bins (0–20%, 21–40%, 41–60%, 61–80%, 81–100%)
- Scatter plot with linear trend line (confirms non-linearity)
- Used `tidyverse` throughout (`readr`, `dplyr`, `ggplot2`)
