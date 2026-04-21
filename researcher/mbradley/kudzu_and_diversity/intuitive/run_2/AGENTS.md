# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File**: `data.csv` (located at the project root)
- **Format**: CSV, 200 rows, 2 columns
- **Columns**:
  - `kudzu_coverage`: percentage of ground covered by kudzu (numeric, 0–100)
  - `diversity`: plant-species diversity score (numeric; higher = more native species variety)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Findings
- The relationship between kudzu coverage and plant-species diversity is **non-linear**.
- Diversity is **high** at low kudzu coverage (0–20%), **drops sharply** at moderate coverage (41–60%, mean ≈ 717), then **rebounds** at high coverage (61–100%, mean ≈ 2,416).
- This U-shaped pattern complicates a simple "more kudzu = less diversity" hypothesis and warrants further investigation.

## Session Variables
- `df`: the raw data (200 × 2 tibble)
- `summary_table`: mean, median, SD, min, and max diversity grouped into five 20-point kudzu coverage bins
