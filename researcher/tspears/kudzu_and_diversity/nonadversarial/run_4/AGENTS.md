# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data_1.csv` (located at the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `kudzu_coverage`: Percentage of ground covered by kudzu (numeric, 0–100)
  - `diversity`: Plant-species diversity score (numeric; higher = more native species variety)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data_1.csv")
```

## Key Findings
- Strong negative association between kudzu coverage and plant diversity.
- Mean diversity drops from ~46 (0–20% kudzu) to ~12 (81–100% kudzu) — a ~74% decline.
- The trend is consistent and monotone across five 20-percentage-point coverage bands.

## Analysis Performed
- Summary table: mean, median, SD, min, max of diversity grouped by kudzu coverage band (0–20%, 21–40%, 41–60%, 61–80%, 81–100%).
