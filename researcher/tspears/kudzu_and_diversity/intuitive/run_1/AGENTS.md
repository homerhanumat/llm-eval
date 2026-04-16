# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data_2.csv` (note: context.md refers to `data.csv`, but the actual file is `data_2.csv`)
- **Location:** Root of the project (`c:/Users/fire2468/prompt-folder/data_2.csv`)
- **Format:** CSV, 200 rows, 2 columns, no missing values

## Data Schema
| Column | Type | Description |
|---|---|---|
| `kudzu_coverage` | double | Percentage of ground covered by kudzu (0–100) |
| `diversity` | double | Plant-species diversity score (higher = more diverse) |

## How to Load
```r
library(tidyverse)
df <- read_csv("data_2.csv")
```

## Key Finding
The relationship between kudzu coverage and plant diversity is **U-shaped (non-monotonic)**, not a simple negative association:
- Lowest diversity observed in the **40–60% kudzu coverage** group (mean ~717)
- Highest diversity in the **80–100% coverage** group (mean ~2,416) — similar to the low-coverage group (~2,334)
- This unexpected pattern warrants further investigation (confounders, scatter plot, correlation)
