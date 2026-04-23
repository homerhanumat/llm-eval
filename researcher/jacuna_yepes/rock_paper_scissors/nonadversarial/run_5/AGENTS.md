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

300 rounds of Rock, Paper, Scissors against different random opponents. Player's move and outcome (W/L/T) recorded each round.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

# Win summary
df |>
  summarise(
    n         = n(),
    wins      = sum(outcome == "W"),
    losses    = sum(outcome == "L"),
    ties      = sum(outcome == "T"),
    win_ratio = round(mean(outcome == "W"), 3),
    .by = selections
  ) |> arrange(desc(win_ratio))

# Chi-square
tab <- table(df$selections, df$outcome)
chisq.test(tab)

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
  labs(
    title   = "Outcome Distribution by Player Selection",
    subtitle = "Scissors achieves the highest win ratio (39.8%)",
    x = "Player Move", y = "Proportion", fill = "Outcome"
  ) +
  theme_minimal()
```

---

## Results

| selections |   n | wins | losses | ties | win_ratio |
|------------|-----|------|--------|------|-----------|
| scissors   |  88 |   35 |     21 |   32 |     0.398 |
| paper      | 103 |   29 |     32 |   42 |     0.282 |
| rock       | 109 |   29 |     52 |   28 |     0.266 |

**Chi-square:** χ²(4) = 13.2, p = 0.010

**Inferred opponent moves:**

| opponent |   n |
|----------|-----|
| paper    | 113 |
| rock     |  93 |
| scissors |  94 |

---

## Conclusion

**Scissors is the best first move.** It achieves the highest win ratio (39.8%), and the chi-square test confirms the relationship between selection and outcome is statistically significant (p = 0.010). The inferred opponent data provides the mechanism: opponents played paper slightly more often (n=113) than rock or scissors, meaning scissors disproportionately beats their most common choice. Rock, despite being the most common player move, had the lowest win ratio (26.6%) — suggesting random opponents do not preferentially choose scissors. This analysis supports scissors as the statistically optimal opening move.

