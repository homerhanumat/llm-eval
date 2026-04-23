# Project Memory

## Research Question
What is the best first move to play against a random person in Rock, Paper, Scissors?

## Data File
- **File**: `data.csv` (located at project root)
- **Format**: CSV, 300 rows, 2 columns
- **Columns**:
  - `selections` (character): The man's move — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (character): Result of that move — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data.csv")
```

## Key Finding
**Rock is the best first move** — it yielded a 55.7% win rate. Opponents tend to favor scissors, making rock the optimal counter.

| Selection | Win % | Loss % | Tie % |
|-----------|-------|--------|-------|
| Rock      | 55.7% | 22.7%  | 21.6% |
| Scissors  | 21.8% | 18.8%  | 59.4% |
| Paper     | 11.8% | 67.6%  | 20.6% |
