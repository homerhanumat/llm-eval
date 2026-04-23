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

300 rounds of Rock, Paper, Scissors. Opponent moves inferred from player selection and outcome.

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
    win_ratio = round(mean(outcome == "W"), 3),
    .by = selections
  ) |> arrange(desc(win_ratio))

# Infer opponent moves
df_aug <- df |>
  mutate(opponent = case_when(
    selections == "rock"     & outcome == "L" ~ "paper",
    selections == "rock"     & outcome == "W" ~ "scissors",
    selections == "rock"     & outcome == "T" ~ "rock",
    selections == "paper"    & outcome == "L" ~ "scissors",
    selections == "paper"    & outcome == "W" ~ "rock",
    selections == "paper"    & outcome == "T" ~ "paper",
    selections == "scissors" & outcome == "L" ~ "rock",
    selections == "scissors" & outcome == "W" ~ "paper",
    selections == "scissors" & outcome == "T" ~ "scissors"
  ))

df_aug |> count(opponent) |> arrange(desc(n))

ggplot(df, aes(x = selections, fill = outcome)) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = c("W"="steelblue","L"="coral","T"="gray70")) +
  labs(title = "Outcome by Player Selection",
       x = "Player Move", y = "Proportion", fill = "Outcome") +
  theme_minimal()
```

---

## Results

**Win ratios:** rock 0.557 > scissors 0.218 > paper 0.118

**Inferred opponent choices:**

| opponent |   n |
|----------|-----|
| scissors | 119 |
| paper    |  87 |
| rock     |  94 |

---

## Conclusion

Opponents played scissors most often (n=119), which explains rock's dominance — rock beats scissors. Playing rock is the clearly optimal first move with a 55.7% win rate, backed by the opponent tendency pattern.

