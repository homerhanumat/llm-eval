# Project Memory

## Overview
A Rock, Paper, Scissors experiment analyzing the best opening move against random opponents.

## Research Question
What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File:** `data.csv` (root of the project)
- **Format:** CSV, 300 rows, 2 columns
- **Columns:**
  - `selections` (character): the move the man played — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (character): result of that move — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data.csv", show_col_types = FALSE)
```

## Key Findings
- **Scissors** is the best opening move: 39.8% win rate, 23.9% loss rate.
- **Rock** is the worst: 26.6% win rate, 47.7% loss rate — opponents frequently threw paper.
- **Paper** was middling: 28.2% win rate, 31.1% loss rate.
- Opponent behavior implies a tendency to play paper (countering an expected rock), consistent with known RPS psychology.
