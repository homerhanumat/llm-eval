---
title: "Project Memory"
author: "jose acuna"
date: "2026-04-21"
---

# Project Memory

## Research Question

Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

---

## Context

Kudzu (*Pueraria montana*) is an aggressive invasive species known to blanket forest understories. This dataset records kudzu coverage percentage and a diversity index across 200 forest sites.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

ggplot(df, aes(x = kudzu_coverage, y = diversity)) +
  geom_point(alpha = 0.4) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Kudzu Coverage vs. Plant Diversity",
    x = "Kudzu Coverage (%)", y = "Diversity Index"
  )

df |>
  mutate(kudzu_level = ifelse(kudzu_coverage >= 50, "high", "low")) |>
  summarise(mean_diversity = round(mean(diversity), 2), .by = kudzu_level)
```

---

## Results

| kudzu_level | mean_diversity |
|-------------|----------------|
| high        |          19.83 |
| low         |          39.84 |

The scatter plot shows a clear downward linear trend: as kudzu coverage increases, diversity decreases.

---

## Conclusion

The visualization confirms a strong negative association between kudzu coverage and plant diversity. The regression line slopes steeply downward, and the group means reinforce this: high-kudzu sites have roughly half the diversity of low-kudzu sites.

