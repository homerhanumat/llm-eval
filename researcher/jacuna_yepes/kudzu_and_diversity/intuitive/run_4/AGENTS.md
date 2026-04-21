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

model <- lm(diversity ~ kudzu_coverage, data = df)
summary(model)

ggplot(df, aes(x = kudzu_coverage, y = diversity)) +
  geom_point(alpha = 0.4) +
  geom_smooth(method = "lm", se = TRUE, color = "steelblue") +
  labs(title = "Linear Regression: Kudzu Coverage vs. Diversity",
       x = "Kudzu Coverage (%)", y = "Diversity Index")
```

---

## Results

| kudzu_level |   n | mean_diversity | min_diversity | max_diversity |
|-------------|-----|----------------|---------------|---------------|
| high        | 106 |        1505.87 |          0.00 |       3524.03 |
| low         |  94 |        1583.13 |        109.69 |       3860.83 |

**Linear Regression:**

| Term           | Estimate | Std. Error | t value | p-value |
|----------------|----------|------------|---------|---------|
| (Intercept)    | 1526.710 |    128.540 |   11.88 | < 0.001 |
| kudzu_coverage |    0.308 |      2.217 |    0.14 |   0.890 |

**R² = 0.000**

---

## Conclusion

The linear regression shows virtually no relationship between kudzu coverage and plant diversity (β = 0.308, p = 0.89, R² ≈ 0). The regression line is essentially flat. This dataset does not support the hypothesis that kudzu reduces plant-species diversity — the relationship is absent in this data.

