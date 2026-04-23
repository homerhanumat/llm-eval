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

A man played 300 games of Rock, Paper, Scissors against different random opponents. His move and the outcome (W/L/T) were recorded each round.

---

## Methodology

```r
library(readr)
library(dplyr)

df <- read_csv("data.csv")

df |> count(selections)
```

---

## Results

| selections |   n |
|------------|-----|
| paper      | 103 |
| rock       | 109 |
| scissors   |  88 |

---

## Conclusion

The player's moves were roughly evenly distributed across the three options. To determine which move is best, we need to look at win rates by selection.

