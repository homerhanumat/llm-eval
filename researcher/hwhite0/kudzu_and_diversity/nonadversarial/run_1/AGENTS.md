# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data.csv` (located at project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `kudzu_coverage`: percentage of ground covered by kudzu (numeric, 0–100)
  - `diversity`: plant-species diversity score (numeric; higher = more native species variety)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Analysis Completed
- Grouped `kudzu_coverage` into five 20-point bands (0–20%, 20–40%, 40–60%, 60–80%, 80–100%)
- Computed mean, median, SD, min, and max of `diversity` within each group
- Found a strong, consistent negative association: mean diversity drops from ~46 (low kudzu) to ~12 (high kudzu)
