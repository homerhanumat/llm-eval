# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Schema:**
  - `kudzu_coverage`: numeric — percentage of ground covered by kudzu (0–100)
  - `diversity`: numeric — plant-species diversity score (higher = more native species)

## Loading the Data
```r
library(tidyverse)
kudzu <- read_csv("data.csv")
```

## Key Findings
- Strong negative relationship between kudzu coverage and plant-species diversity.
- Mean diversity drops from ~46 (0–20% kudzu) to ~12 (81–100% kudzu) — a ~73% reduction.
- The relationship is consistent across all coverage bands (low within-group SD ~5–7).
EOF 2>&1
