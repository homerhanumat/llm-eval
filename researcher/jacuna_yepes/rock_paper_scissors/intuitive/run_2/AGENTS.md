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
library(ggplot2)

df <- read_csv("data.csv")

df |>
  summarise(
    n         = n(),
    wins      = sum(outcome == "W"),
    losses    = sum(outcome == "L"),
    ties      = sum(outcome == "T"),
    win_ratio = round(mean(outcome == "W"), 3),
    .by = selections
  )

ggplot(df, aes(x = selections, fill = outcome)) +
  geom_bar(position = "fill") +
  labs(title = "Outcome Distribution by Selection",
       x = "Selection", y = "Proportion", fill = "Outcome")
```

---

## Results

| selections |   n | wins | losses | ties | win_ratio |
|------------|-----|------|--------|------|-----------|
| rock       |  97 |   54 |     22 |   21 |     0.557 |
| scissors   | 101 |   22 |     19 |   60 |     0.218 |
| paper      | 102 |   12 |     69 |   21 |     0.118 |

---

## Conclusion

Rock dominates with a 55.7% win ratio — far above scissors (21.8%) and paper (11.8%). The bar chart clearly shows rock's disproportionate win proportion.

