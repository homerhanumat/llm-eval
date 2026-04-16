# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data Files
- `data_1.csv` — main dataset, located at the root of the project folder (`C:/Users/fire2468/prompt-folder/`)

## Data Schema
- `kudzu_coverage`: numeric, percentage of ground covered by kudzu (0–100)
- `diversity`: numeric, plant-species diversity score (higher = more native species variety)
- 200 rows, no missing values

## How to Load
```r
library(tidyverse)
df <- read_csv("C:/Users/fire2468/prompt-folder/data_1.csv")
```

## Analysis Completed
- Summary table created by grouping `kudzu_coverage` into 5 bands (0–20%, 21–40%, 41–60%, 61–80%, 81–100%) and computing mean, median, SD, min, and max of `diversity` per group using `dplyr`.
- Key finding: mean diversity drops monotonically from ~46 (low kudzu) to ~12 (high kudzu), consistent with kudzu suppressing native plant diversity.

## Style Notes
- Use `tidyverse` functions throughout: `readr` for loading, `dplyr` for summaries, `ggplot2` for plots.
- Use the base R pipe `|>`.
