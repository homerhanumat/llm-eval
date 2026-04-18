# Project Memory

## Overview
A Rock, Paper, Scissors experiment in which a man plays 300 games against random opponents. The research question is: **What is the best first move to play against a random person: rock, paper, or scissors?**

## Data File
- **File**: `data.csv` (project root)
- **Format**: CSV, 300 rows × 2 columns
- **Columns**:
  - `selections` (character): the man's move — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (character): result of that move — `"W"` (win), `"L"` (loss), `"T"` (tie)
- Note: opponent selections are not recorded directly; they must be inferred from `selections` and `outcome`.

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Finding
**Rock is the best first move.** Win rates by selection:
| Selection | Win Rate | Win–Loss Rate |
|-----------|----------|---------------|
| Rock      | 55.7%    | +0.330        |
| Scissors  | 21.8%    | +0.030        |
| Paper     | 11.8%    | −0.559        |

Opponents appeared to play scissors disproportionately often, making rock the dominant strategy.
