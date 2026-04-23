# Project Memory

## Overview
A Rock, Paper, Scissors experiment analyzing the best first move to play against a random opponent.

## Files
- `context.md` — Project description and instructions
- `data.csv` — Experiment results (300 games)

## Data Schema (`data.csv`)
| Column     | Type   | Description                                        |
|------------|--------|----------------------------------------------------|
| selections | string | The man's chosen move: `rock`, `paper`, `scissors` |
| outcome    | string | Result of that move: `W` (win), `L` (loss), `T` (tie) |

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data.csv")
```

## Key Findings
- **Rock** is the best opening move: 55.7% win rate (54 wins out of 97 plays)
- **Paper** is the worst opening move: only 11.8% win rate, 67.6% loss rate
- **Scissors** ties most often (59.4% tie rate), suggesting opponents frequently throw scissors
- Overall pattern implies opponents tend to play scissors most often
