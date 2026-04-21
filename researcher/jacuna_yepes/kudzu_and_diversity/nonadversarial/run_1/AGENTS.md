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

Kudzu (*Pueraria montana*) is an aggressive invasive species known to blanket forest understories. This dataset records kudzu coverage percentage and a diversity index across 200 forest sites. The hypothesis is that higher kudzu coverage leads to lower plant diversity.

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
    x = "Kudzu Coverage (%)",
    y = "Diversity Index"
  )

df |>
  mutate(kudzu_level = ifelse(kudzu_coverage >= 50, "high", "low")) |>
  summarise(
    n = n(),
    mean_diversity = round(mean(diversity), 2),
    min_diversity  = round(min(diversity), 2),
    max_diversity  = round(max(diversity), 2),
    .by = kudzu_level
  )
```

---

## Results

| kudzu_level |   n | mean_diversity | min_diversity | max_diversity |
|-------------|-----|----------------|---------------|---------------|
| high        | 106 |          19.83 |          -1.6 |          42.4 |
| low         |  94 |          39.84 |          20.2 |          58.5 |

---

## Conclusion

Sites with high kudzu coverage (≥50%) had a mean diversity index of **19.83**, substantially lower than low-coverage sites at **39.84**. The linear trend confirms a clear negative association: as kudzu coverage increases, plant diversity decreases. This is consistent with the biological hypothesis that kudzu suppresses native plant diversity through competitive exclusion and canopy shading.

