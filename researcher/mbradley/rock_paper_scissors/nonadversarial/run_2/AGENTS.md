# Project Memory

## Overview
A Rock, Paper, Scissors experiment analyzing the best first move to play against a random opponent.

## Files
- `context.md` — Instructions and research question for the project.
- `data.csv` — Experiment results (300 games).

## Data: `data.csv`
- **Rows:** 300 (one per game)
- **Columns:**
  - `selections` (character): The move the man played — `"rock"`, `"paper"`, or `"scissors"`
  - `outcome` (character): Result of that game — `"W"` (win), `"L"` (loss), or `"T"` (tie)
- Read with `readr::read_csv()`

## Analysis
- Used `tidyverse` (`readr` to load, `dplyr` to summarize)
- Grouped by `selections`, computed counts and percentages for wins, losses, and ties
- **Key finding:** Scissors was the best first move (39.8% win rate, 23.9% loss rate); Rock was the worst (26.6% win rate, 47.7% loss rate), suggesting opponents tend to play paper
