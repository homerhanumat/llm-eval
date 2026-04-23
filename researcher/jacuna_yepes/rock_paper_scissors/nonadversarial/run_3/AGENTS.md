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

300 rounds of Rock, Paper, Scissors against random opponents.

---

## Methodology

```r
library(readr)
library(dplyr)

df <- read_csv("data.csv")

df |>
  summarise(
    n         = n(),
    wins      = sum(outcome == "W"),
    win_ratio = round(mean(outcome == "W"), 3),
    .by = selections
  )

# Chi-square: are outcomes independent of selection?
tab <- table(df$selections, df$outcome)
chisq.test(tab)
```

---

## Results

| selections |   n | wins | win_ratio |
|------------|-----|------|-----------|
| paper      | 103 |   29 |     0.282 |
| scissors   |  88 |   35 |     0.398 |
| rock       | 109 |   29 |     0.266 |

**Chi-square:** χ²(4) = 13.2, p = 0.010

---

## Conclusion

The chi-square test (p = 0.010) suggests that the outcome is not independent of the move chosen. Scissors performs best with a win ratio of 39.8%, and the association is statistically significant.

