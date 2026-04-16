# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data_1.csv` (located at project root)
- **Format:** CSV, 200 rows, 2 numeric columns
- **Columns:**
  - `kudzu_coverage`: percentage of ground covered by kudzu (0–100)
  - `diversity`: plant-species diversity score (higher = more native species variety)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data_1.csv")
```

## Key Findings
- Strong negative relationship between kudzu coverage and plant-species diversity.
- Mean diversity drops from ~46 (0–20% kudzu) to ~12 (81–100% kudzu) — roughly a 74% reduction.
- The decline is consistent and monotone across five 20-point coverage bins.
