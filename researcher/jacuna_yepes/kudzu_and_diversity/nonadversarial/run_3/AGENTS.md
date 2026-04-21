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

# Summary by kudzu level
df |>
  mutate(kudzu_level = ifelse(kudzu_coverage >= 50, "high", "low")) |>
  summarise(
    n              = n(),
    mean_diversity = round(mean(diversity), 2),
    min_diversity  = round(min(diversity),  2),
    max_diversity  = round(max(diversity),  2),
    .by = kudzu_level
  )

# t-test
low  <- df$diversity[df$kudzu_coverage <  50]
high <- df$diversity[df$kudzu_coverage >= 50]
t.test(low, high)

# Scatter plot
ggplot(df, aes(x = kudzu_coverage, y = diversity)) +
  geom_point(alpha = 0.4) +
  labs(title = "Kudzu Coverage vs. Plant Diversity",
       x = "Kudzu Coverage (%)", y = "Diversity Index")
```

---

## Results

| kudzu_level |   n | mean_diversity | min_diversity | max_diversity |
|-------------|-----|----------------|---------------|---------------|
| high        | 106 |          19.83 |          -1.6 |          42.4 |
| low         |  94 |          39.84 |          20.2 |          58.5 |

**Welch two-sample t-test:** t = 28.9, df = 196.4, **p < 2.2e-16**

---

## Conclusion

The difference in mean diversity between low-kudzu (39.84) and high-kudzu (19.83) environments is highly statistically significant (p < 0.001). This strongly supports the hypothesis that greater kudzu coverage is associated with reduced plant diversity.

