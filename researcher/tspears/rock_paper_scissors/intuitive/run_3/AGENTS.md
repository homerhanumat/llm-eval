# Project Memory: Rock, Paper, Scissors Experiment

## Research Question
What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File:** `data_2.csv` (located at project root)
- **Rows:** 300 (one row per game)
- **Columns:**
  - `selections` (chr): the man's move — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (chr): result of his move — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data_2.csv")
```

## Key Finding
**Rock is the best first move**, with a 55.7% win rate. Paper is the worst (67.6% loss rate). The opponents appeared to strongly prefer throwing scissors.

| Selection | Win % | Loss % | Tie % |
|-----------|-------|--------|-------|
| Rock      | 55.7% | 22.7%  | 21.6% |
| Scissors  | 21.8% | 18.8%  | 59.4% |
| Paper     | 11.8% | 67.6%  | 20.6% |
