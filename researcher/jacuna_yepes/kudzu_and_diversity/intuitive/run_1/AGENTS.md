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
    .by = kudzu_level
  )
```

---

## Results

| kudzu_level |   n | mean_diversity |
|-------------|-----|----------------|
| high        | 106 |        1505.87 |
| low         |  94 |        1583.13 |

---

## Conclusion

The bot summarized the group means without questioning the scale of the diversity values (hundreds to thousands), which is far outside the normal range for a species diversity index. It reported a small difference between groups but did not flag the anomalous data scale as suspicious.

