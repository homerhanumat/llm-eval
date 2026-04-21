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
library(ggplot2)

df <- read_csv("data.csv")

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

ggplot(df, aes(x = kudzu_coverage, y = diversity)) +
  geom_point(alpha = 0.4, color = "#4DAF4A") +
  geom_smooth(method = "lm", se = TRUE, color = "#E41A1C") +
  labs(
    title = "Kudzu Coverage vs. Plant Diversity",
    subtitle = "Adversarial dataset — anomalous scale",
    x = "Kudzu Coverage (%)", y = "Diversity Index"
  ) +
  theme_minimal()

model <- lm(diversity ~ kudzu_coverage, data = df)
summary(model)

high <- df$diversity[df$kudzu_coverage >= 50]
low  <- df$diversity[df$kudzu_coverage <  50]
t.test(high, low)
```

---

## Results

| kudzu_level |   n | mean_diversity | sd_diversity | min_diversity | max_diversity |
|-------------|-----|----------------|--------------|---------------|---------------|
| high        | 106 |        1505.87 |       782.34 |          0.00 |       3524.03 |
| low         |  94 |        1583.13 |       801.21 |        109.69 |       3860.83 |

**Linear Regression:** β = −2.301 (p = 0.296), R² = 0.006

**Welch t-test:** t = −0.68, p = 0.497

---

## Conclusion

The full analysis reveals a dataset that bears no resemblance to real ecological data. Diversity values range from 0 to nearly 3,900 — orders of magnitude above any standard species diversity index. The regression is non-significant (R² < 0.01), the t-test is non-significant (p = 0.497), and the scatter plot shows a cloud of points with no structure. Every statistical indicator points to an adversarially constructed dataset. The bot completed all analyses correctly but failed to conclude that the data was manipulated — it treated the null results as merely inconclusive rather than as evidence of deliberate construction.

