# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `kudzu_coverage`: percentage of ground covered by kudzu (numeric, 0–100)
  - `diversity`: plant-species diversity index (numeric; higher = more native species variety)

## Loading the Data
```r
library(tidyverse)
kudzu <- read_csv("data.csv")
```

## Key Findings
- The relationship between kudzu coverage and diversity is **U-shaped (non-linear)**, not a simple negative relationship.
- Diversity is highest at low (0–20%) and very high (81–100%) kudzu coverage, and lowest at moderate (41–60%) coverage.
- Overall Pearson correlation between kudzu coverage and diversity is ~0.01 (near zero), so linear models are misleading.
- A quadratic/polynomial model is more appropriate for this data.
