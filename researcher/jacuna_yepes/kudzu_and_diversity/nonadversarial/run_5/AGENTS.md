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

Researchers surveyed 200 forest environments, recording the percentage of ground covered by kudzu and a plant-species diversity index. Higher diversity values indicate a greater variety of native plant species. Kudzu is a fast-growing invasive vine that blocks sunlight and outcompetes local species for resources.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

# 1. Summary table by kudzu level
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

# 4. Scatter plot + regression line
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
| high        | 106 |          19.83 |          -1.6 |          42.4 |
| low         |  94 |          39.84 |          20.2 |          58.5 |

### Correlation

Pearson r = **-0.901** — a very strong negative linear association.

### Linear Regression

| Term           | Estimate | Std. Error | t value | p-value    |
|----------------|----------|------------|---------|------------|
| (Intercept)    |   49.878 |      0.812 |   61.45 | < 2.2e-16  |
| kudzu_coverage |   -0.410 |      0.014 |  -29.30 | < 2.2e-16  |

**R² = 0.813** | **p < 2.2e-16**

---

## Conclusion

The analysis provides overwhelming evidence that kudzu coverage negatively affects plant-species diversity. Every additional 1% of kudzu coverage is associated with a **0.41-point decrease** in the diversity index. With a Pearson correlation of r = -0.901 and an R² of 0.813, kudzu coverage explains over 80% of the variation in diversity. The regression line on the scatter plot shows a tight, consistent downward trend across all environments. These findings are fully consistent with the biological mechanism: kudzu blocks sunlight and outcompetes native species for resources.

**Score: correct** — The model correctly identified a strong negative relationship between kudzu coverage and plant diversity.

