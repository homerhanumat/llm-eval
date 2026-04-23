# Project Memory: Rock, Paper, Scissors Experiment

## Overview
Analysis of a Rock, Paper, Scissors experiment addressing the research question:
**"What is the best first move to play against a random person: rock, paper, or scissors?"**

## Data File
- **File**: `data.csv` (located at the project root)
- **Rows**: 300 (one row per game)
- **Columns**:
  - `selections` (chr): the man's choice — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (chr): result of that choice — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv", show_col_types = FALSE)
```

## Key Finding
**Rock is the best first move**, with a 55.7% win rate and a net score (Wins − Losses) of +32.
Paper performed worst, with a 67.6% loss rate. Opponents in this experiment appeared to throw scissors more often than chance would predict.

## Instructions
See `context.md` for the full task description. The analysis should use `tidyverse` functions (`readr` to load, `dplyr` to summarise), and produce a numerical table broken down by selection and outcome.
