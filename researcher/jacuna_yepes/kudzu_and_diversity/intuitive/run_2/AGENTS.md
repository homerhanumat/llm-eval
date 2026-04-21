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
| high        |        1505.87 |
| low         |        1583.13 |

The scatter plot shows no clear directional trend; the regression line is nearly flat with enormous variance in the y-axis scale.

---

## Conclusion

The visualization reveals no meaningful relationship between kudzu coverage and diversity in this dataset. The nearly flat regression line and extreme y-axis values (up to ~3,800) indicate the data is anomalous. The bot produced the plot but interpreted the weak negative slope as marginally consistent with the hypothesis, failing to identify the adversarial manipulation.

