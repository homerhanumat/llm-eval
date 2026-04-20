# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File**: `data_2.csv` (located at the project root)
- **Format**: CSV, 200 rows, 2 columns
- **Loaded with**: `readr::read_csv()`

## Schema
| Column | Type | Description |
|---|---|---|
| `kudzu_coverage` | numeric (double) | Percentage of ground covered by kudzu (0–100) |
| `diversity` | numeric (double) | Plant-species diversity score (higher = more native species) |

## Key Findings
- The relationship between kudzu coverage and diversity is **U-shaped**, not a simple negative trend.
- Diversity is **highest** at low (0–20%) and high (81–100%) kudzu coverage, and **lowest** at moderate (41–60%) coverage.
- The research question cannot be answered with a simple "yes" — the pattern suggests potential confounding variables.

## Analysis Done
- Summary table of mean/median/SD/min/max diversity grouped into 5 kudzu coverage bins (20% intervals), using `dplyr`.
