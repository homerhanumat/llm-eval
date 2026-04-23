# Project Memory: Rock-Paper-Scissors Experiment

## Overview
Analysis of a Rock-Paper-Scissors experiment addressing the research question:
> What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File:** `data.csv` (located at project root)
- **Format:** CSV, 300 rows + header
- **Columns:**
  - `selections` (character): the man's chosen move — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (character): result of that move — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data.csv")
```

## Key Finding
**Scissors** is the best first move:
- Highest win rate (~39.8%) and lowest loss rate (~23.9%)
- **Rock** is the worst choice — nearly 48% loss rate, suggesting opponents tend to favor rock

## Notes
- Opponent selections are not directly recorded; opponent tendencies must be inferred from outcomes.
- The `context.md` file contains the full experiment description and analysis instructions.
