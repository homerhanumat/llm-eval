# Project Memory: Kudzu & Plant Diversity Study

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data.csv` (located at project root: `c:/Users/bradl/prompt-folder/`)
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
- **No linear relationship** between kudzu coverage and diversity (Pearson r ≈ 0.010).
- A **U-shaped pattern** emerges when coverage is grouped into 20-point bins:
  - Diversity is *highest* at both extremes (0–20% and 81–100% coverage).
  - Diversity is *lowest* in the middle range (41–60% coverage).
- Large within-group variability suggests kudzu coverage alone is a weak predictor.
- The data do **not** support the hypothesis that kudzu suppresses native plant diversity.
