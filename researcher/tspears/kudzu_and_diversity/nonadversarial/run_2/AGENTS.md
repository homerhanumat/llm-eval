# Project Memory: Kudzu & Plant Diversity Study

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data_1.csv` (note: context.md refers to it as `data.csv`, but the actual file is `data_1.csv`)
- **Location:** Root of the project folder (`c:/Users/fire2468/prompt-folder/`)
- **Rows:** 200 (one row per forest site)
- **Columns:**
  - `kudzu_coverage`: percentage of ground covered by kudzu (numeric, 0–100)
  - `diversity`: plant-species diversity index (numeric; higher = more native species variety)

## Loading the Data
```r
library(tidyverse)
kudzu <- read_csv("c:/Users/fire2468/prompt-folder/data_1.csv")
```

## Key Finding
Strong negative relationship between kudzu coverage and plant diversity. Mean diversity drops from ~46 (0–20% coverage) to ~12 (81–100% coverage) — a ~74% decline across coverage bins.
