# Project Memory: Rock Paper Scissors Experiment

## Overview
This project analyzes the results of a Rock, Paper, Scissors experiment to determine the best first move to play against a random opponent.

## Research Question
> What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File:** `data.csv` (located at project root)
- **Format:** CSV, 300 rows, 2 columns
- **Columns:**
  - `selections` (character): the move the man played — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (character): result of that move — `"W"` (win), `"L"` (loss), or `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data.csv")
```

## Key Finding
**Rock is the best first move**, yielding a win rate of ~55.7%. Paper was the worst (only ~11.8% wins, ~67.6% losses). Scissors produced mostly ties (~59.4%). This suggests random opponents in the experiment frequently played scissors.

## Summary Table
Produced using `dplyr`: counts and percentages of wins, losses, and ties broken down by the man's selection.
