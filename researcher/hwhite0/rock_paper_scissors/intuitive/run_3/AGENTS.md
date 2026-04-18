# Project Memory: Rock-Paper-Scissors Experiment

## Overview
An experiment analyzing the best first move in Rock, Paper, Scissors against a random human opponent. The man played 300 games, one at a time with a new random person each round.

## Data File
- **File:** `data.csv` (project root)
- **Format:** CSV, 300 rows, 2 columns
- **Columns:**
  - `selections` (chr): The man's choice — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (chr): Result from the man's perspective — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data.csv")
```

## Key Findings
- **Rock** is the best first move: 55.7% win rate (54 wins out of 97 games)
- **Paper** is the worst move: only 11.8% win rate, 67.6% loss rate
- **Scissors** had a very high tie rate (59.4%), suggesting opponents frequently also chose scissors
- Human opponents in the experiment appear to have heavily favored **scissors**, which is why rock performed so well

## Analysis Done
- Built a summary table grouped by `selections` with win/loss/tie counts and rates using `dplyr`
- Concluded that rock beats scissors most often because opponents tend to throw scissors more than chance would predict
