# Project Memory

## Project Description
Analysis of a Rock, Paper, Scissors experiment addressing the research question:
> What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File:** `data.csv` (located at project root)
- **Rows:** 300 (one row per game)
- **Columns:**
  - `selections` (character): the man's choice — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (character): result of that game — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data.csv")
```

## Key Finding
Scissors was the best first move, with the highest win rate (39.8%) and lowest loss rate (23.9%). Rock was the worst first move (26.6% win rate, 47.7% loss rate), likely because random opponents tend to play paper.
