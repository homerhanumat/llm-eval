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

df <- read_csv("data.csv")

df |>
  mutate(kudzu_level = ifelse(kudzu_coverage >= 50, "high", "low")) |>
  count(kudzu_level)
```

---

## Results

| kudzu_level |   n |
|-------------|-----|
| high        | 106 |
| low         |  94 |

A basic count shows the sample is nearly evenly split between high and low kudzu coverage environments.

---

## Conclusion

The sample is balanced. Further analysis is needed to determine whether kudzu level relates to plant diversity in this dataset.

