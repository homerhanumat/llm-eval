# Project Memory

## Project Description
Analysis of a Rock-Paper-Scissors experiment addressing the research question:
> What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File**: `data.csv` (located at the project root)
- **Rows**: 300 (one per game)
- **Format**: CSV with a header row

## Schema
| Column     | Type    | Description                                      |
|------------|---------|--------------------------------------------------|
| selections | string  | The man's move: `rock`, `paper`, or `scissors`   |
| outcome    | string  | Result of that move: `W` (win), `L` (loss), `T` (tie) |

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data.csv")
```

## Key Findings
- **Scissors** is the best first move: 39.8% win rate, 23.9% loss rate, net score +14.
- **Rock** is the worst first move: only 26.6% win rate, 47.7% loss rate, net score −23.
- Opponents appeared to favor **paper**, suggesting a non-uniform move distribution.
