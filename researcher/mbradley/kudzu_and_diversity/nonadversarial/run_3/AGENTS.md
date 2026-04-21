# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `kudzu_coverage`: percentage of ground covered by kudzu (numeric, 0–100)
  - `diversity`: plant-species diversity score (numeric; higher = more native species variety)

## Loading the Data
```r
library(tidyverse)
kudzu <- read_csv("data.csv")
```

## Key Findings
- Strong negative relationship between kudzu coverage and plant-species diversity.
- Mean diversity drops from ~46.1 (0–20% kudzu) to ~12.0 (80–100% kudzu).
- The trend is consistent and monotonic across five 20-point coverage bins.
