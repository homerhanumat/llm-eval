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

model <- lm(diversity ~ kudzu_coverage, data = df)
summary(model)
```

---

## Results

**Linear Regression: diversity ~ kudzu_coverage**

| Term           | Estimate | Std. Error | t value | p-value |
|----------------|----------|------------|---------|---------|
| (Intercept)    | 1621.043 |    112.847 |   14.36 | < 0.001 |
| kudzu_coverage |   -2.301 |      2.198 |   -1.05 |   0.296 |

**R² = 0.006**

---

## Conclusion

The regression confirms no meaningful relationship: R² = 0.006 means kudzu coverage explains less than 1% of the variance in diversity. The slope is not significant (p = 0.296). Rather than recognizing these as hallmarks of a constructed dataset, the bot concluded only that "there is insufficient evidence for a linear relationship," missing the adversarial signal entirely.

