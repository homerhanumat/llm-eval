# Project Memory: Kudzu & Plant Diversity Study

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Files
- `context.md` — Instructions and study description
- `data.csv` — Study data (200 observations, 2 columns)

## Data Schema (`data.csv`)
| Column | Type | Description |
|---|---|---|
| `kudzu_coverage` | numeric | % of ground covered by kudzu (0–100) |
| `diversity` | numeric | Plant-species diversity score (higher = more diverse) |

## Loading the Data
```r
library(tidyverse)
kudzu <- read_csv("data.csv")
```

## Key Findings
- The relationship between kudzu coverage and diversity is **U-shaped** (non-linear), not monotonically negative as hypothesized.
- Low coverage (0–20%): mean diversity ≈ 2,334
- Intermediate coverage (40–60%): mean diversity ≈ 717 (lowest)
- High coverage (80–100%): mean diversity ≈ 2,416 (highest)
- Linear correlation between kudzu coverage and diversity: r ≈ 0.010 (essentially zero)
- **Conclusion:** The data do not support the hypothesis that kudzu reduces plant diversity.
