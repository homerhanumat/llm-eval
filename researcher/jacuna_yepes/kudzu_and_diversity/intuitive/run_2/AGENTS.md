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

Researchers surveyed 200 forest environments, recording the percentage of ground covered by kudzu and a plant-species diversity index. Higher diversity values indicate a greater variety of native plant species.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

df |>
  mutate(kudzu_level = ifelse(kudzu_coverage >= 50, "high", "low")) |>
  summarise(
    n              = n(),
    mean_diversity = round(mean(diversity), 2),
    .by = kudzu_level
  )

ggplot(df, aes(x = kudzu_coverage, y = diversity)) +
  geom_point(alpha = 0.4) +
  labs(title = "Kudzu Coverage vs. Plant Diversity",
       x = "Kudzu Coverage (%)", y = "Diversity Index")
```

---

## Results

| kudzu_level |   n | mean_diversity |
|-------------|-----|----------------|
| high        | 106 |        1505.87 |
| low         |  94 |        1583.13 |

The scatter plot does not show a clear linear trend — diversity values are widely spread at all coverage levels.

---

## Conclusion

Mean diversity is similar between high-kudzu (1505.87) and low-kudzu (1583.13) environments. The scatter plot does not reveal an obvious pattern, unlike the expected negative relationship.

