# Project Memory: Rock, Paper, Scissors Experiment

## Overview
An experiment where a man plays 300 games of Rock, Paper, Scissors against random opponents. The research question is: **What is the best first move to play against a random person: rock, paper, or scissors?**

## Data File
- **File:** `data_2.csv` (note: context.md refers to `data.csv`, but the actual file is `data_2.csv`)
- **Location:** Root of the project folder (`C:/Users/fire2468/prompt-folder/`)
- **Format:** CSV, 301 rows (1 header + 300 game records)

## Schema
| Column      | Type   | Description                                      |
|-------------|--------|--------------------------------------------------|
| `selections`| chr    | The man's move: `rock`, `paper`, or `scissors`   |
| `outcome`   | chr    | Result of that move: `W` (win), `L` (loss), `T` (tie) |

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("C:/Users/fire2468/prompt-folder/data_2.csv")
```

## Key Findings
- **Rock** is the best first move: 55.7% win rate (54W / 22L / 21T out of 97 games)
- **Scissors** produced mostly ties: 59.4% tie rate (22W / 19L / 60T out of 101 games)
- **Paper** is the worst move: 67.6% loss rate (12W / 69L / 21T out of 102 games)
- Opponents appear biased toward playing scissors (not truly random)
