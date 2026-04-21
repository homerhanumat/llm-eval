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
| high        | 106 |          19.83 |
| low         |  94 |          39.84 |

---

## Conclusion

Sites with high kudzu coverage had a mean diversity index of 19.83, compared to 39.84 for low-coverage sites. This initial summary strongly suggests that kudzu presence is associated with reduced plant diversity.

