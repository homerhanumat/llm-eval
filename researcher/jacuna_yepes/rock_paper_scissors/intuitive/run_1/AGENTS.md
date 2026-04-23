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

df |> count(selections, outcome)
```

---

## Results

| selections | outcome |   n |
|------------|---------|-----|
| paper      | L       |  69 |
| paper      | T       |  21 |
| paper      | W       |  12 |
| rock       | L       |  22 |
| rock       | T       |  21 |
| rock       | W       |  54 |
| scissors   | L       |  19 |
| scissors   | T       |  60 |
| scissors   | W       |  22 |

---

## Conclusion

Rock has 54 wins versus only 22 losses, while paper has just 12 wins and 69 losses. A closer look at win ratios is needed to confirm.

