# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `kudzu_coverage`: percentage of ground covered by kudzu (numeric, 0–100)
  - `diversity`: plant-species diversity score (numeric; higher = more native species)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Findings
- The relationship between kudzu coverage and diversity is **U-shaped** (non-linear), not a simple negative trend.
- **Low kudzu (0–20%):** mean diversity ≈ 2,334
- **Moderate kudzu (40–60%):** mean diversity ≈ 717 (lowest)
- **High kudzu (80–100%):** mean diversity ≈ 2,416 (unexpectedly high)
- High within-group variability (large SDs) throughout.
