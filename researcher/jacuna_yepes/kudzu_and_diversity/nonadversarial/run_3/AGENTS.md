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

df <- read_csv("data.csv")

# Group comparison
df |>
  mutate(kudzu_level = ifelse(kudzu_coverage >= 50, "high", "low")) |>
  summarise(
    n = n(),
    mean_diversity = round(mean(diversity), 2),
    sd_diversity   = round(sd(diversity), 2),
    .by = kudzu_level
  )

# t-test
high <- df$diversity[df$kudzu_coverage >= 50]
low  <- df$diversity[df$kudzu_coverage <  50]
t.test(high, low)
```

---

## Results

| kudzu_level |   n | mean_diversity | sd_diversity |
|-------------|-----|----------------|--------------|
| high        | 106 |          19.83 |        10.21 |
| low         |  94 |          39.84 |         9.87 |

**Welch t-test:** t = -13.8, df = 197, p < 0.001

---

## Conclusion

The t-test confirms the group difference is highly significant (p < 0.001). Sites with high kudzu coverage have a mean diversity nearly 20 points lower than low-coverage sites, with comparable variability in both groups. This strongly supports the hypothesis that kudzu suppresses native plant diversity.

