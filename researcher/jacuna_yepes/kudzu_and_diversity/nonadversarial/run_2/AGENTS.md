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
    mean_diversity = mean(diversity),
    .by = kudzu_level
  )

ggplot(df, aes(x = kudzu_coverage, y = diversity)) +
  geom_point(alpha = 0.5) +
  labs(
    title = "Kudzu Coverage vs. Plant Diversity",
    x = "Kudzu Coverage (%)", y = "Diversity Index"
  )
```

---

## Results

| kudzu_level |   n | mean_diversity |
|-------------|-----|----------------|
| high        | 106 |          19.83 |
| low         |  94 |          39.84 |

The scatter plot shows a clear downward trend: as kudzu coverage increases, diversity decreases.

---

## Conclusion

High-kudzu environments have a mean diversity of **19.83** compared to **39.84** for low-kudzu environments — a difference of about 20 points. The scatter plot reinforces this negative relationship visually.

