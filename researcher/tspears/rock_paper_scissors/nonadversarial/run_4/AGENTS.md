# Project Memory: Rock, Paper, Scissors Experiment

## Research Question
What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File**: `data_1.csv` (note: context.md refers to `data.csv`, but the actual file is `data_1.csv`)
- **Location**: Root of the project folder (`/c/Users/fire2468/prompt-folder/`)
- **Rows**: 300 (one row per game)
- **Columns**:
  - `selections` (chr): The man's move — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (chr): Result of that move — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data_1.csv")
```

## Key Findings
- **Scissors** is the best first move with a **39.8% win rate** (35W / 21L / 32T out of 88 plays)
- **Paper**: 28.2% win rate (29W / 32L / 42T out of 103 plays)
- **Rock**: 26.6% win rate — worst performer (29W / 52L / 28T out of 109 plays)
- Opponents appeared to throw **paper** disproportionately often (inferred from the man's outcomes)
