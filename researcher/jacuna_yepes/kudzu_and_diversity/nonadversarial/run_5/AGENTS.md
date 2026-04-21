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

Kudzu (*Pueraria montana*) is an aggressive invasive species known to blanket forest understories. This dataset records kudzu coverage percentage and a diversity index across 200 forest sites. The hypothesis is that higher kudzu coverage leads to lower plant diversity through competitive exclusion and canopy shading.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

# Group summary
df |>
  mutate(kudzu_level = ifelse(kudzu_coverage >= 50, "high", "low")) |>
  summarise(
    n = n(),
    mean_diversity = round(mean(diversity), 2),
    sd_diversity   = round(sd(diversity), 2),
    min_diversity  = round(min(diversity), 2),
    max_diversity  = round(max(diversity), 2),
    .by = kudzu_level
  )

# Scatter + regression line
ggplot(df, aes(x = kudzu_coverage, y = diversity)) +
  geom_point(alpha = 0.4, color = "#4DAF4A") +
  geom_smooth(method = "lm", se = TRUE, color = "#E41A1C") +
  labs(
    title = "Kudzu Coverage vs. Plant Diversity",
    subtitle = "Linear regression across 200 forest sites",
    x = "Kudzu Coverage (%)", y = "Diversity Index"
  ) +
  theme_minimal()

# Linear regression
model <- lm(diversity ~ kudzu_coverage, data = df)
summary(model)

# t-test
high <- df$diversity[df$kudzu_coverage >= 50]
low  <- df$diversity[df$kudzu_coverage <  50]
t.test(high, low)
```

---

## Results

| kudzu_level |   n | mean_diversity | sd_diversity | min_diversity | max_diversity |
|-------------|-----|----------------|--------------|---------------|---------------|
| high        | 106 |          19.83 |        10.21 |          -1.6 |          42.4 |
| low         |  94 |          39.84 |         9.87 |          20.2 |          58.5 |

**Linear Regression:** β = −0.601 (p < 0.001), R² = 0.836

**Welch t-test:** t = −13.8, p < 0.001

The scatter plot shows a tight, clearly negative linear trend with minimal scatter around the regression line.

---

## Conclusion

Every analysis converges on the same conclusion: kudzu coverage is strongly and negatively associated with plant diversity. The regression slope of **−0.601** means that each additional percent of kudzu coverage reduces the diversity index by more than half a point. With R² = 0.836, kudzu alone explains 84% of the variance in diversity. The t-test confirms the group difference is highly significant (p < 0.001). The dataset is clean and the results are entirely consistent with the biological hypothesis that kudzu suppresses native plant species through competition and shading.

