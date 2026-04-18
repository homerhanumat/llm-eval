# Project Memory: Kudzu & Plant Diversity Study

## Overview
A study examining whether kudzu (an invasive vine) reduces plant-species diversity
in forest environments.

## Data File
- **`data.csv`** — located at the project root
- 200 rows, 2 numeric columns
- Load with: `kudzu <- readr::read_csv("data.csv")`

## Schema
| Column           | Type    | Description                                          |
|------------------|---------|------------------------------------------------------|
| `kudzu_coverage` | numeric | Percentage of ground covered by kudzu (0–100)        |
| `diversity`      | numeric | Plant-species diversity score (higher = more diverse)|

## Key Findings
- Clear negative relationship: as kudzu coverage increases, plant diversity decreases.
- Mean diversity by kudzu group:
  - 0–20%: 46.1
  - 21–40%: 37.1
  - 41–60%: 29.8
  - 61–80%: 22.4
  - 81–100%: 12.0
- Data support the hypothesis that kudzu reduces native plant diversity.

## Analysis Done
- Summary table: mean, SD, min, max diversity by kudzu coverage quintile (using `dplyr`)
