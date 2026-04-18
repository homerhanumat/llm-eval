# Project Memory: Rock-Paper-Scissors Experiment

## Overview
An experiment where a man plays 300 games of Rock-Paper-Scissors against random opponents (one per game) to determine the best opening move. Only the man's selections and outcomes are recorded; opponent moves must be inferred.

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

## Analysis Approach
Used `dplyr` to compute win/loss/tie counts and percentages grouped by selection, then pivoted wide for a compact summary table. Stored as `summary_table`.

```r
summary_table <- rps |>
  mutate(
    outcome = case_match(outcome, "W" ~ "Win", "L" ~ "Loss", "T" ~ "Tie"),
    selections = str_to_title(selections)
  ) |>
  count(selections, outcome) |>
  group_by(selections) |>
  mutate(total = sum(n), pct = round(100 * n / total, 1)) |>
  ungroup() |>
  pivot_wider(names_from = outcome, values_from = c(n, pct), values_fill = 0)
```

## Key Findings
- **Rock** is the best first move: 55.7% win rate (54W / 22L / 21T out of 97 games)
- **Scissors**: 21.8% win rate, mostly ties (59.4% tie rate)
- **Paper**: worst choice — 11.8% win rate, 67.6% loss rate
- Opponents appear to disproportionately choose scissors, making rock the optimal opening move
