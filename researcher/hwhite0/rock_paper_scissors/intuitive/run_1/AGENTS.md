# Project Memory: Rock-Paper-Scissors Experiment

## Overview
An experiment where a man plays 300 games of Rock-Paper-Scissors against random opponents to determine the best opening move.

## Data File
- **File**: `data.csv` (located at project root)
- **Format**: CSV, 300 rows + header
- **Columns**:
  - `selections` (chr): the man's move — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (chr): result of that move — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data.csv")
```

## Key Findings
- **Rock** is the best first move: 55.7% win rate (54W / 22L / 21T out of 97 games)
- **Scissors**: 21.8% win rate, mostly ties (59.4%)
- **Paper**: worst choice — 11.8% win rate, 67.6% loss rate
- Opponents appear to disproportionately choose scissors, making rock the optimal opening move
