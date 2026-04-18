# Project Memory

## Overview
A Rock, Paper, Scissors experiment analyzing the best first move to play against a random opponent.

**Research question:** What is the best first move to play against a random person — rock, paper, or scissors?

## Data

- **File:** `data.csv` (root of project)
- **Rows:** 300 (one row per game)
- **Columns:**
  - `selections` (character): the man's choice — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (character): result of that game — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data

```r
library(tidyverse)
rps <- read_csv("data.csv", show_col_types = FALSE)
```

## Key Findings

Rock is the best first move (55.7% win rate). Summary by selection:

| Selection | Wins | Losses | Ties | Total | Win % | Loss % | Tie % |
|-----------|------|--------|------|-------|-------|--------|-------|
| Rock      |  54  |   22   |  21  |   97  | 55.7% |  22.7% | 21.6% |
| Paper     |  12  |   69   |  21  |  102  | 11.8% |  67.6% | 20.6% |
| Scissors  |  22  |   19   |  60  |  101  | 21.8% |  18.8% | 59.4% |

Paper was the worst move (67.6% loss rate). Scissors resulted in a tie most often (59.4%), suggesting opponents frequently also played scissors.
