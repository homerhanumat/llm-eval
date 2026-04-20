# Project Memory: Rock-Paper-Scissors Experiment

## Overview
An experiment analyzing the best first move in Rock-Paper-Scissors against random human opponents.

**Research Question:** What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File:** `data_1.csv` (note: context.md refers to it as `data.csv`, but the actual file is `data_1.csv`)
- **Location:** `C:/Users/fire2468/prompt-folder/data_1.csv`
- **Rows:** 300 (one row per game)
- **Columns:**
  - `selections` (chr): The man's move — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (chr): Result of that move — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("C:/Users/fire2468/prompt-folder/data_1.csv")
```

## Key Finding
**Scissors is the best first move:**

| Selection | Wins | Losses | Ties | Total | Win % | Loss % | Tie % |
|-----------|------|--------|------|-------|-------|--------|-------|
| Scissors  | 35   | 21     | 32   | 88    | 39.8% | 23.9%  | 36.4% |
| Paper     | 29   | 32     | 42   | 103   | 28.2% | 31.1%  | 40.8% |
| Rock      | 29   | 52     | 28   | 109   | 26.6% | 47.7%  | 25.7% |

- Scissors has the highest win rate (39.8%) and lowest loss rate (23.9%).
- Rock is the worst opening move, losing nearly half the time (47.7%).
- Opponents appear to favor paper, consistent with known human RPS tendencies.
EOF 2>&1
