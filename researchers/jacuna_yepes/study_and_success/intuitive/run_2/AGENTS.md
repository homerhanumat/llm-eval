# AGENTS.md — Run 2: Correlation Analysis

**Author:** Jose Acuna
**Date:** 2026-04-21
**Research Question:** Do study hours predict the final exam score?

---

## Intuition

After confirming a visual trend, the next intuitive step is to quantify
*how strongly* study hours and exam scores move together. Pearson's correlation
coefficient gives us a single number summarizing this relationship.

## Hypothesis

> There is a statistically significant positive correlation between study hours
> and exam scores (r > 0, p < 0.05).

## Agent Steps

1. Load or simulate the dataset from Run 1.
2. Compute Pearson's correlation coefficient between `study_hours` and `exam_score`.
3. Run a significance test (`cor.test()`).
4. Interpret the strength: weak (|r| < 0.3), moderate (0.3–0.7), strong (|r| > 0.7).

## R Code

```r
library(tidyverse)

set.seed(42)
n <- 100
study_data <- tibble(
  study_hours = runif(n, 0, 10),
  exam_score  = 50 + 4 * study_hours + rnorm(n, 0, 8)
)

# Pearson correlation with significance test
cor_result <- cor.test(study_data$study_hours, study_data$exam_score,
                       method = "pearson")

cor_result
```

## Expected Outcome

A Pearson r value close to 0.8 with p < 0.001, indicating a strong, statistically
significant positive relationship between study hours and exam scores.

---
*Run 2 of 5 — Intuitive track*
