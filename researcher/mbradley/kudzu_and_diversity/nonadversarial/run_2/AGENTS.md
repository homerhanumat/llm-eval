# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data Files
- `data.csv` — Main dataset, located at the project root (`c:/Users/bradl/prompt-folder/data.csv`)

## Data Schema
- `kudzu_coverage`: Numeric (0–100). Percentage of ground covered by kudzu in a forest environment.
- `diversity`: Numeric. Plant-species diversity score; higher = more native species variety.
- 200 observations, 2 columns (both `dbl`).

## Loading the Data
```r
library(tidyverse)
kudzu <- read_csv("c:/Users/bradl/prompt-folder/data.csv")
```

## Analysis Done
- Grouped `kudzu_coverage` into five bins (0–20%, 21–40%, 41–60%, 61–80%, 81–100%) using `cut()`.
- Computed mean, median, SD, min, and max of `diversity` per group using `dplyr`.
- Key finding: strong negative association between kudzu coverage and plant-species diversity (mean diversity drops from ~46 at low coverage to ~12 at high coverage).
