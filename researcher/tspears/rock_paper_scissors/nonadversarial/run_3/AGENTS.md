# Project Memory: Rock-Paper-Scissors Experiment

## Research Question
What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File:** `data_1.csv` (note: context.md references `data.csv`, but the actual file is `data_1.csv`)
- **Location:** Root of the project folder (`C:/Users/fire2468/prompt-folder/`)
- **Rows:** 300 (one row per game)
- **Columns:**
  - `selections` (chr): The man's move — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (chr): Result of the game — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("C:/Users/fire2468/prompt-folder/data_1.csv")
```

## Key Finding
Scissors was the best first move with a **39.8% win rate** and the lowest loss rate (23.9%). Rock performed worst, losing nearly half the time (47.7%), suggesting opponents tend to favor paper — making scissors the optimal counter.

| Selection | Total | Wins | Losses | Ties | Win Rate | Loss Rate | Tie Rate |
|-----------|-------|------|--------|------|----------|-----------|----------|
| Scissors  | 88    | 35   | 21     | 32   | 0.398    | 0.239     | 0.364    |
| Paper     | 103   | 29   | 32     | 42   | 0.282    | 0.311     | 0.408    |
| Rock      | 109   | 29   | 52     | 28   | 0.266    | 0.477     | 0.257    |
