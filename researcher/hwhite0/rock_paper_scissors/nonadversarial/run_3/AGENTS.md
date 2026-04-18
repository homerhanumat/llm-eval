# Project Memory

## Project Description
A Rock, Paper, Scissors experiment where a man plays 300 games against random opponents. The research question is: **What is the best first move to play against a random person: rock, paper, or scissors?**

## Data Files
- **`data.csv`** — Main dataset (300 rows, 2 columns)
  - `selections`: The man's move for each game (`rock`, `paper`, `scissors`)
  - `outcome`: Result of that game (`W` = win, `L` = loss, `T` = tie)

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data.csv", show_col_types = FALSE)
```

## Key Findings
- **Scissors** is the best first move: highest win rate (39.8%), lowest loss rate (23.9%), net score +14.
- **Rock** is the worst first move: 47.7% loss rate, net score −23.
- Opponents appeared to play paper most frequently (explaining rock's poor performance).
