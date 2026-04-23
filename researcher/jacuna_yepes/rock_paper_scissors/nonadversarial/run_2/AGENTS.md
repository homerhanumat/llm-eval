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

300 rounds of Rock, Paper, Scissors. The player's selection and outcome (W/L/T) were recorded.

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
| paper      | 103 |   29 |     32 |   42 |     0.282 |
| scissors   |  88 |   35 |     21 |   32 |     0.398 |
| rock       | 109 |   29 |     52 |   28 |     0.266 |

---

## Conclusion

Scissors has the highest win ratio (39.8%), while rock has the lowest (26.6%). The bar chart shows scissors wins more proportionally than the other two options.

