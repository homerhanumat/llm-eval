# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data Files

- **data.csv** — Main dataset (200 rows, 2 columns)
  - `kudzu_coverage`: percentage of ground covered by kudzu (numeric, 0–100)
  - `diversity`: plant-species diversity score (numeric; higher = more native species variety)
- **context.md** — Project description and instructions

## Loading the Data

```r
library(tidyverse)
data <- read_csv("data.csv")
```

## Analysis Notes

- Data contains 200 forest-environment survey sites.
- A grouped summary table was constructed by binning `kudzu_coverage` into five 20-percentage-point intervals (0–20%, 21–40%, 41–60%, 61–80%, 81–100%) and computing mean, median, SD, min, and max of `diversity` within each group.
- A clear negative relationship was found: mean diversity drops from ~46 at low kudzu coverage (0–20%) to ~12 at high coverage (81–100%).
- One site in the 81–100% group had a negative diversity value (−1.6), which may be a data anomaly worth investigating.
