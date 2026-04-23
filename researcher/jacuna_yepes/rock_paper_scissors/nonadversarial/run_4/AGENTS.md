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

300 rounds of Rock, Paper, Scissors. Opponent moves inferred from the player's selection and outcome.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

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
  labs(title = "Outcome by Player Selection",
       x = "Player Move", y = "Proportion", fill = "Outcome") +
  theme_minimal()
```

---

## Results

**Win ratios:** scissors 0.398 > paper 0.282 > rock 0.266

**Inferred opponent choices:**

| opponent |   n |
|----------|-----|
| paper    | 113 |
| rock     |  93 |
| scissors |  94 |

---

## Conclusion

Scissors wins most often (39.8%) and the inferred opponent data suggests opponents tend to play paper slightly more often (n=113). This explains scissors's advantage — it beats paper. Playing scissors appears to be the optimal first move.

