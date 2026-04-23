# Project Memory

## Research Question
What is the best first move to play against a random person in Rock, Paper, Scissors?

## Data File
- **File:** `data.csv` (located at the project root)
- **Rows:** 300 (one row per game)
- **Columns:**
  - `selections` (chr): the man's chosen move — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (chr): result of that game — `"W"` (win), `"L"` (loss), or `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Finding
**Scissors** is the best opening move:
- Highest win rate: 39.8% (35/88 games)
- Lowest loss rate: 23.9% (21/88 games)

Rock was the worst move, with a 47.7% loss rate.
