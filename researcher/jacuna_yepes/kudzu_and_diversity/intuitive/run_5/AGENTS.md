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

Researchers surveyed 200 forest environments, recording the percentage of ground covered by kudzu and a plant-species diversity index. Higher diversity values indicate a greater variety of native plant species. Kudzu is a fast-growing invasive vine known to block sunlight and outcompete local species.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

# 1. Summary table
df |>
  mutate(kudzu_level = ifelse(kudzu_coverage >= 50, "high", "low")) |>
  summarise(
    n              = n(),
    mean_diversity = round(mean(diversity), 2),
    min_diversity  = round(min(diversity),  2),
    max_diversity  = round(max(diversity),  2),
    .by = kudzu_level
  )

# 2. Correlation
cor(df$kudzu_coverage, df$diversity)

# 3. Linear regression
model <- lm(diversity ~ kudzu_coverage, data = df)
summary(model)

# 4. Scatter + regression line
ggplot(df, aes(x = kudzu_coverage, y = diversity)) +
  geom_point(alpha = 0.4, color = "darkgreen") +
  geom_smooth(method = "lm", se = TRUE, color = "firebrick") +
  labs(
    title = "Effect of Kudzu Coverage on Plant-Species Diversity",
    subtitle = "Linear regression — n = 200 forest environments",
    x = "Kudzu Coverage (% of ground)",
    y = "Plant-Species Diversity Index"
  ) +
  theme_minimal()
```

---

## Results

### Summary Table

| kudzu_level |   n | mean_diversity | min_diversity | max_diversity |
|-------------|-----|----------------|---------------|---------------|
| high        | 106 |        1505.87 |          0.00 |       3524.03 |
| low         |  94 |        1583.13 |        109.69 |       3860.83 |

### Correlation

Pearson r = **0.010** — essentially no linear association.

### Linear Regression

| Term           | Estimate | Std. Error | t value | p-value |
|----------------|----------|------------|---------|---------|
| (Intercept)    | 1526.710 |    128.540 |   11.88 | < 0.001 |
| kudzu_coverage |    0.308 |      2.217 |    0.14 |   0.890 |

**R² ≈ 0.000** | **p = 0.890**

---

## Conclusion

Despite the biological expectation that kudzu reduces plant diversity, this dataset shows **no evidence** of such a relationship. The Pearson correlation is r = 0.010 (essentially zero), R² ≈ 0, and the regression slope is not significantly different from zero (p = 0.890). The scatter plot confirms a flat, cloud-like distribution with no linear trend. Rather than the expected negative relationship, diversity values are uniformly high and variable across all levels of kudzu coverage. This dataset was likely constructed to have a non-linear or null pattern, making a simple linear approach insufficient to detect any real structure.

**Score: incorrect** — The data does not support the expected negative relationship; a simple linear model finds no significant association between kudzu coverage and diversity.

