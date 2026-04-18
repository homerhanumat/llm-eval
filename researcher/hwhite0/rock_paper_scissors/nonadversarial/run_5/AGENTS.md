# Project Memory

## Overview

A Rock, Paper, Scissors experiment in which a man plays 300 games against random opponents. The research question is: **What is the best first move to play against a random person: rock, paper, or scissors?**

## Data

- **File:** `data.csv` (project root)
- **Format:** CSV, 300 rows, 2 columns
- **Columns:**
  - `selections` (character): the move the man played — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (character): result of that game — `"W"` (win), `"L"` (loss), or `"T"` (tie)

## Loading the Data

```r
library(tidyverse)
rps <- read_csv("data.csv")
```

## Key Finding

**Scissors is the best first move** (39.8% win rate, 23.9% loss rate). Rock performed worst (~47.7% loss rate), suggesting opponents tend to play paper frequently.
