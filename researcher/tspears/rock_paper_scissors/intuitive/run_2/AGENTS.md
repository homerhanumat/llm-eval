# Project Memory

## Research Question
What is the best first move to play against a random person in Rock, Paper, Scissors?

## Data File
- **File:** `data_2.csv` (located at the project root — note: context.md references `data.csv` but the actual file is `data_2.csv`)
- **Format:** CSV, 300 rows, 2 columns
- **Columns:**
  - `selections` (character): the move the man played — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (character): result of that move — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data_2.csv")
```

## Key Finding
**Rock is the best first move**, with a 55.7% win rate and net wins of +32 across 97 games.  
Paper was the worst choice, with a 67.6% loss rate and net wins of −57.  
Scissors was roughly neutral (high tie rate of 59.4%, net +3).

## Summary Table Produced
Columns: `selections`, `W`, `L`, `T`, `Total`, `Win_pct`, `Loss_pct`, `Tie_pct`, `Net_wins`
Stored in R variable `summary_table`.
