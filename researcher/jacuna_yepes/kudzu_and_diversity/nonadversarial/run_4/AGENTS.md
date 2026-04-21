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

# Summary table
df |>
  mutate(kudzu_level = ifelse(kudzu_coverage >= 50, "high", "low")) |>
  summarise(
    n              = n(),
    mean_diversity = round(mean(diversity), 2),
    min_diversity  = round(min(diversity),  2),
    max_diversity  = round(max(diversity),  2),
    .by = kudzu_level
  )

# Linear regression
model <- lm(diversity ~ kudzu_coverage, data = df)
summary(model)

# Scatter + regression line
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
| high        | 106 |          19.83 |          -1.6 |          42.4 |
| low         |  94 |          39.84 |          20.2 |          58.5 |

**Linear Regression:**

| Term           | Estimate | Std. Error | t value | p-value    |
|----------------|----------|------------|---------|------------|
| (Intercept)    |   49.878 |      0.812 |   61.45 | < 2.2e-16  |
| kudzu_coverage |   -0.410 |      0.014 |  -29.30 | < 2.2e-16  |

**R² = 0.813**

---

## Conclusion

The linear regression confirms a strong negative relationship: for every 1% increase in kudzu coverage, plant diversity decreases by **0.41 units** on average. The model explains **81.3%** of the variance in diversity (R² = 0.813), and the effect is highly significant (p < 0.001). Kudzu coverage is a strong predictor of reduced native plant diversity.

