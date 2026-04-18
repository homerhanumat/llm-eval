# Project Memory

## Overview
This project investigates whether kudzu (an invasive vine) reduces plant-species diversity in forest environments.

## Files
- `context.md` — Description of the research question and instructions for the analysis.
- `data.csv` — Survey data for 200 forest environments.

## Data Schema (`data.csv`)
| Column | Type | Description |
|---|---|---|
| `kudzu_coverage` | numeric (0–100) | Percentage of ground covered by kudzu |
| `diversity` | numeric | Plant-species diversity index (higher = more diverse) |

## Loading the Data
```r
library(tidyverse)
kudzu <- read_csv("data.csv")
```

## Key Finding
The relationship between kudzu coverage and diversity is **U-shaped** (not a simple negative relationship). Diversity is highest at very low (0–20%) and very high (80–100%) coverage, and lowest at intermediate coverage (40–60%). The Pearson correlation is near zero (r ≈ 0.01), indicating no linear association. The pattern may reflect confounding variables not captured in the dataset.
