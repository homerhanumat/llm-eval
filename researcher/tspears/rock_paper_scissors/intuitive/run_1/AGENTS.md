# Project Memory: Rock Paper Scissors Experiment

## Research Question
What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File:** `data_2.csv` (note: context.md references `data.csv`, but actual file is `data_2.csv`)
- **Location:** Root of the project folder (`c:/Users/fire2468/prompt-folder/`)
- **Format:** CSV, 300 rows, 2 columns
- **Schema:**
  - `selections` (chr): The man's move — one of `"rock"`, `"paper"`, `"scissors"`
  - `outcome` (chr): Result of that move — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("c:/Users/fire2468/prompt-folder/data_2.csv")
```

## Key Findings
- **Rock** is the best first move: 55.7% win rate (54 wins out of 97 games)
- **Paper** is the worst first move: 67.6% loss rate
- **Scissors** produced mostly ties: 59.4% tie rate
- Opponents appear to disproportionately favor scissors, which explains rock's dominance
