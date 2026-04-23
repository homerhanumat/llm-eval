---
title: "Project Memory"
author: "jose acuna"
date: "2026-04-22"
---

# Project Memory

## Research Question

What is the best first move to play against a random person: rock, paper, or scissors?

---

## Context

300 rounds of Rock, Paper, Scissors against different random opponents.

---

## Methodology

```r
library(readr)
library(dplyr)

df <- read_csv("data.csv")

df |>
  summarise(
    n         = n(),
    win_ratio = round(mean(outcome == "W"), 3),
    .by = selections
  ) |> arrange(desc(win_ratio))

tab <- table(df$selections, df$outcome)
chisq.test(tab)
```

---

## Results

| selections | win_ratio |
|------------|-----------|
| rock       |     0.557 |
| scissors   |     0.218 |
| paper      |     0.118 |

**Chi-square:** χ²(4) = 97.6, p < 0.001

---

## Conclusion

The chi-square test (p < 0.001) confirms that outcome is strongly dependent on the player's move. Rock wins 55.7% of rounds — a highly statistically significant advantage. This is the optimal opening move.

