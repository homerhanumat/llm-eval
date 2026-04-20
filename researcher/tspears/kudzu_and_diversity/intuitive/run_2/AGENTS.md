# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data_2.csv` (located at the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `kudzu_coverage`: percentage of ground covered by kudzu (numeric, 0–100)
  - `diversity`: plant-species diversity score (numeric; higher = greater native species variety)

## Loading the Data
```r
library(tidyverse)
kudzu <- read_csv("data_2.csv")
```

## Key Finding
A U-shaped (non-linear) relationship was found between kudzu coverage and plant diversity. Diversity is highest at low (0–20%) and very high (81–100%) kudzu coverage, and lowest at mid-range coverage (41–60%). This does not support a simple negative linear relationship.
