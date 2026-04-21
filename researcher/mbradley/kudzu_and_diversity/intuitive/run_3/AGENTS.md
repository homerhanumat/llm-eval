# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data.csv` (located at project root)
- **Format:** CSV, 200 rows, 2 numeric columns
- **Columns:**
  - `kudzu_coverage`: percentage of ground covered by kudzu (0–100)
  - `diversity`: plant-species diversity score (higher = more native species variety)

## Loading the Data
```r
library(tidyverse)
kudzu <- read_csv("data.csv")
```

## Key Findings
- No simple linear relationship between kudzu coverage and diversity (Pearson r ≈ 0.01, Spearman ρ ≈ 0.02).
- The relationship is **U-shaped (non-monotonic)**: diversity is highest at low (0–20%) and high (81–100%) kudzu coverage, and lowest in the middle (41–60%) range.
- The data do **not** support the hypothesis that greater kudzu coverage consistently reduces plant-species diversity.

## Summary Table (diversity by coverage group)
| Kudzu Coverage | N  | Mean Diversity | Median Diversity |
|:--------------:|:--:|:--------------:|:----------------:|
| 0–20%          | 38 | 2,334          | 2,346            |
| 21–40%         | 37 | 1,245          | 1,315            |
| 41–60%         | 46 | 717            | 674              |
| 61–80%         | 39 | 1,130          | 1,033            |
| 81–100%        | 40 | 2,416          | 2,418            |
