Retrieved file contents

context.md

Retrieved file contents

data.csvThe data has two columns: `selections` (rock/paper/scissors) and `outcome` (W/L/T). The research question is about which move is best to play first against a random person. I'll build a summary table showing wins, losses, ties, and win rate per selection.


```r
library(tidyverse)

data <- read_csv("data.csv")

summary_table <- data |>
  count(selections, outcome) |>
  pivot_wider(names_from = outcome, values_from = n, values_fill = 0) |>
  rename(Wins = W, Losses = L, Ties = T) |>
  mutate(
    Total    = Wins + Losses + Ties,
    Win_Rate = Wins / Total,
    Loss_Rate = Losses / Total,
    Tie_Rate  = Ties / Total
  ) |>
  arrange(desc(Win_Rate))

summary_table

```


Here is the summary table and interpretation

---

## Summary Table: Outcomes by Selection

| Selection | Wins | Losses | Ties | Total | Win Rate | Loss Rate | Tie Rate |
|-----------|------|--------|------|-------|----------|-----------|----------|
| **scissors** | 35 | 21 | 32 | 88 | **39.8%** | 23.9% | 36.4% |
| paper     | 29 | 32 | 42 | 103 | 28.2% | 31.1% | 40.8% |
| rock      | 29 | 52 | 28 | 109 | 26.6% | 47.7% | 25.7% |

---

## Interpretation

**Scissors is the best first move to play against a random person.**

- **Scissors** achieves the highest win rate (39.8%) and the lowest loss rate (23.9%) of the three options — a favorable combination on both dimensions.
- **Rock** is the worst opening move: despite being the stereotypically popular choice, it yields the highest loss rate (47.7%), suggesting that random opponents tend to play paper more often than expected by chance (or avoid scissors, which would beat rock's counter).
- **Paper** is middling — it ties most frequently (40.8%) but wins less and loses more than scissors.

In a purely random opponent model, each move would have equal expected win rates (~33%). The fact that rock loses nearly half the time suggests opponents in this experiment were disproportionately choosing paper, making scissors the strategically dominant opening move against this population.