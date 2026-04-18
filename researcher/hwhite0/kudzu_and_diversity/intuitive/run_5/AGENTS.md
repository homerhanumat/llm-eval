# Project Memory

## Overview
This project investigates whether kudzu (an invasive vine) reduces plant-species diversity in forest environments.

## Files
- `context.md` — Research question and instructions for the analysis
- `data.csv` — Survey data for 200 forest environments (CSV, 2 columns)

## Data Schema (`data.csv`)
| Column           | Type    | Description                                                        |
|------------------|---------|--------------------------------------------------------------------|
| `kudzu_coverage` | numeric | Percentage of ground covered by kudzu (0–100)                      |
| `diversity`      | numeric | Plant-species diversity index (higher = more native species variety)|

## Loading the Data
```r
library(tidyverse)
kudzu <- read_csv("data.csv")
```

## Key Findings
- The relationship between kudzu coverage and diversity is **U-shaped**, not linear.
- Diversity is highest at low (0–20%) and high (81–100%) kudzu coverage.
- Diversity is lowest at intermediate kudzu coverage (41–60%), where mean diversity (~717) is roughly one-third of near-zero-coverage environments (~2,334).
- Pearson and Spearman correlations are near zero (~0.01), so linear summaries are misleading.
- A grouped summary table and LOESS scatter plot were used to reveal the non-linear pattern.
