# Project Memory: Rock-Paper-Scissors Experiment

## Research Question
What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File:** `data_1.csv` (located at the root of the project folder)
- **Format:** CSV with 2 columns, 300 rows (one row per game)
- **Columns:**
  - `selections` (chr): the man's move — "rock", "paper", or "scissors"
  - `outcome` (chr): result of that move — "W" (win), "L" (loss), or "T" (tie)

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("C:/Users/fire2468/prompt-folder/data_1.csv")
```

## Key Findings
- **Scissors** is the best first move: 39.8% win rate, 23.9% loss rate
- **Paper**: 28.2% win rate, 31.1% loss rate, 40.8% tie rate
- **Rock**: 26.6% win rate, 47.7% loss rate — worst option
- Opponents appear to favor Paper, which explains scissors' advantage and rock's poor performance

## Notes
- Opponent selections are not recorded directly; they can be inferred from the man's selection + outcome
- The note in `context.md` refers to the file as `data.csv`, but the actual file is `data_1.csv`
