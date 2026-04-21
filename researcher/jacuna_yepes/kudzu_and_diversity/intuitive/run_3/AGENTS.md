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

df |>
  mutate(kudzu_level = ifelse(kudzu_coverage >= 50, "high", "low")) |>
  summarise(
    n = n(),
    mean_diversity = round(mean(diversity), 2),
    sd_diversity   = round(sd(diversity), 2),
    .by = kudzu_level
  )

high <- df$diversity[df$kudzu_coverage >= 50]
low  <- df$diversity[df$kudzu_coverage <  50]
t.test(high, low)
```

---

## Results

| kudzu_level |   n | mean_diversity | sd_diversity |
|-------------|-----|----------------|--------------|
| high        | 106 |        1505.87 |       782.34 |
| low         |  94 |        1583.13 |       801.21 |

**Welch t-test:** t = −0.68, df = 196, p = 0.497

---

## Conclusion

The t-test is non-significant (p = 0.497), and the standard deviations (~780–800) are nearly as large as the means themselves, indicating extreme noise. The bot reported "no significant difference" correctly but treated this as an inconclusive result rather than recognizing that the scale and variance of the data strongly indicate adversarial construction.

