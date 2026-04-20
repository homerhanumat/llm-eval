# Project Memory: Rock, Paper, Scissors Experiment

## Research Question
What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File:** `data_2.csv` (located at the project root; note: `context.md` references `data.csv` but the actual file is `data_2.csv`)
- **Format:** CSV, 300 rows, 2 columns
- **Columns:**
  - `selections` (character): the move the man played — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (character): result of that move — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data_2.csv")
```

## Key Findings
- **Rock** is the best first move: 55.7% win rate (54/97 games)
- **Paper** is the worst: 11.8% win rate, 67.6% loss rate
- **Scissors** produced mostly ties (59.4%)
- Opponents disproportionately played Scissors, making Rock the dominant opening move

## Summary Table (produced with tidyverse/dplyr)
| Selection | Wins | Losses | Ties | Total | Win % | Loss % | Tie % |
|-----------|------|--------|------|-------|-------|--------|-------|
| Rock      | 54   | 22     | 21   | 97    | 55.7% | 22.7%  | 21.6% |
| Scissors  | 22   | 19     | 60   | 101   | 21.8% | 18.8%  | 59.4% |
| Paper     | 12   | 69     | 21   | 102   | 11.8% | 67.6%  | 20.6% |
