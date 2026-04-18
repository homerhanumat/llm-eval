# Project Memory: Kudzu & Plant-Species Diversity Study

## Overview
A study examining whether kudzu (an invasive vine) reduces plant-species diversity in forest environments.

## Data File
- **File:** `data.csv` (project root)
- **Format:** CSV, 200 rows, 2 numeric columns
- **Columns:**
  - `kudzu_coverage`: percentage of ground covered by kudzu (0–100)
  - `diversity`: plant-species diversity index (higher = more native species variety)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Findings
- The relationship between kudzu coverage and diversity is **U-shaped (non-linear)**, not a simple negative relationship.
- **Intermediate kudzu levels (40–60%)** are associated with the *lowest* mean diversity (~717).
- **High kudzu coverage (80–100%)** paradoxically shows *high* mean diversity (~2,416) — similar to low-coverage environments (~2,334).
- Pearson correlation is essentially 0 (r = 0.01), confirming no linear relationship.
- A quadratic or loess model is needed to capture the curved pattern.

## Session Variables (as of last session)
- `df`: the raw data (200 × 2 tibble)
- `summary_table`: grouped summary by 20-point kudzu coverage bins (mean, median, SD, min, max diversity)
- `cor_val`: Pearson correlation = 0.01
