# Project Memory: Kudzu & Plant-Species Diversity Study

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data_2.csv` (note: context.md refers to `data.csv`, but the actual file is `data_2.csv`)
- **Location:** Project root (`c:/Users/fire2468/prompt-folder/`)
- **Format:** CSV, 200 rows, 2 columns
- **Loaded with:** `readr::read_csv()`

## Schema
| Column           | Type    | Description                                              |
|------------------|---------|----------------------------------------------------------|
| `kudzu_coverage` | numeric | Percentage of ground covered by kudzu (0–100)            |
| `diversity`      | numeric | Plant-species diversity index (higher = more diversity)  |

## Key Findings
- The relationship between kudzu coverage and diversity is **U-shaped (quadratic)**, not linear.
- Pearson correlation r ≈ 0.01 (near zero — no linear relationship).
- **Moderate kudzu coverage (41–60%)** is associated with the **lowest** mean diversity (~717).
- **Low (0–20%)** and **high (81–100%)** kudzu coverage are both associated with **high** mean diversity (~2,300–2,400).
- The simple hypothesis (more kudzu → less diversity) is **not supported** by the data.

## Analysis Done
- Summary table: diversity grouped into 5 kudzu coverage bins (0–20%, 21–40%, 41–60%, 61–80%, 81–100%), showing N, mean, median, SD, min, max diversity.
- Scatter plot with LOESS smoother confirming U-shaped pattern.
- Packages used: `tidyverse` (readr, dplyr, ggplot2).
