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

| Term           | Estimate | Std. Error | t value | p-value  |
|----------------|----------|------------|---------|----------|
| (Intercept)    |   49.821 |      0.981 |  50.79  | < 0.001  |
| kudzu_coverage |   -0.601 |      0.019 | -31.63  | < 0.001  |

**R² = 0.836**

---

## Conclusion

The linear regression confirms a strong, statistically significant negative relationship between kudzu coverage and plant diversity (β = −0.601, p < 0.001). For each 1% increase in kudzu coverage, the diversity index decreases by approximately 0.6 points. The model explains **83.6%** of the variance in diversity, indicating kudzu coverage is a powerful predictor of species loss.

