# Project Memory: Rock, Paper, Scissors Experiment

## Research Question
What is the best first move to play against a random person in Rock, Paper, Scissors?

## Data File
- **File:** `data_1.csv` (note: context.md refers to it as `data.csv`, but the actual file is `data_1.csv`)
- **Location:** Root of the project folder (`C:/Users/fire2468/prompt-folder/`)
- **Format:** CSV, 300 rows + header

## Schema
| Column     | Type   | Description                                      |
|------------|--------|--------------------------------------------------|
| selections | string | The man's move: `rock`, `paper`, or `scissors`   |
| outcome    | string | Result of that move: `W` (win), `L` (loss), `T` (tie) |

## How to Load
```r
library(tidyverse)
rps <- read_csv("data_1.csv", show_col_types = FALSE)
```

## Key Finding
**Scissors is the best first move** (win rate ≈ 39.8%, loss rate ≈ 23.9%).  
Rock is the worst first move (loss rate ≈ 47.7%).  
Opponents showed a tendency to choose paper, consistent with known psychological biases in RPS.
