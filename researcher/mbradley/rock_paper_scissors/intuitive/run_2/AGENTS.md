# Project Memory

## Overview
This project analyzes a Rock, Paper, Scissors experiment to determine the best first move against a random opponent.

## Data File
- **File**: `data.csv` (located at project root)
- **Format**: CSV, 300 rows + header
- **Columns**:
  - `selections` (chr): the man's move — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (chr): result of that move — `"W"` (win), `"L"` (loss), `"T"` (tie)

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data.csv")
```

## Key Findings
- **Rock** is the best first move: 55.7% win rate (54W / 22L / 21T out of 97 games)
- **Paper** is the worst first move: 67.6% loss rate
- **Scissors** produced a high tie rate (59.4%)
- Opponents appear to throw scissors frequently, explaining rock's dominance

## Research Question
> What is the best first move to play against a random person: rock, paper, or scissors?
