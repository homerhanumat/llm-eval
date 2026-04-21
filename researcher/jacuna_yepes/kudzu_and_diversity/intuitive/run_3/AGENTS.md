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
    min_diversity  = round(min(diversity),  2),
    max_diversity  = round(max(diversity),  2),
    .by = kudzu_level
  )

low  <- df$diversity[df$kudzu_coverage <  50]
high <- df$diversity[df$kudzu_coverage >= 50]
t.test(low, high)

ggplot(df, aes(x = kudzu_coverage, y = diversity)) +
  geom_point(alpha = 0.4) +
  labs(title = "Kudzu Coverage vs. Plant Diversity",
       x = "Kudzu Coverage (%)", y = "Diversity Index")
```

---

## Results

| kudzu_level |   n | mean_diversity | min_diversity | max_diversity |
|-------------|-----|----------------|---------------|---------------|
| high        | 106 |        1505.87 |          0.00 |       3524.03 |
| low         |  94 |        1583.13 |        109.69 |       3860.83 |

**Welch t-test:** t = -0.58, df = 194, **p = 0.56** (not significant)

---

## Conclusion

There is no statistically significant difference in mean diversity between high and low kudzu environments (p = 0.56). The scatter plot shows no discernible linear relationship. This dataset does not support the hypothesis that kudzu reduces plant diversity.

