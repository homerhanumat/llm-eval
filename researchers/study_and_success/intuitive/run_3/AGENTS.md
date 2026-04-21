# AGENTS.md — Run 3: Simple Linear Regression

**Author:** Jose Acuna
**Date:** 2026-04-21
**Research Question:** Do study hours predict the final exam score?

---

## Intuition

Correlation tells us *whether* a relationship exists. Regression tells us
*how much* exam scores change per additional hour of study, and lets us make
concrete predictions.

## Hypothesis

> A simple linear regression model will show that each additional hour of study
> is associated with a meaningful increase in exam score, with a significant
> slope coefficient and a reasonable R².

## Agent Steps

1. Fit a simple linear regression: `exam_score ~ study_hours`.
2. Inspect coefficients: intercept and slope.
3. Report R² — the proportion of variance in exam scores explained by study hours.
4. Plot the fitted regression line over the data.

## R Code

```r
library(tidyverse)

set.seed(42)
n <- 100
study_data <- tibble(
  study_hours = runif(n, 0, 10),
  exam_score  = 50 + 4 * study_hours + rnorm(n, 0, 8)
)

# Fit simple linear regression
model <- lm(exam_score ~ study_hours, data = study_data)

summary(model)

# Augment data with fitted values
library(broom)
model_aug <- augment(model, study_data)

ggplot(model_aug, aes(x = study_hours, y = exam_score)) +
  geom_point(alpha = 0.6, color = "#2C7BB6") +
  geom_line(aes(y = .fitted), color = "#D7191C", linewidth = 1) +
  labs(
    title = "Simple Linear Regression: Study Hours → Exam Score",
    subtitle = paste0("R² = ", round(glance(model)$r.squared, 3)),
    x = "Study Hours",
    y = "Exam Score"
  ) +
  theme_minimal()
```

## Expected Outcome

- **Intercept** ≈ 50 (baseline score with zero study hours)
- **Slope** ≈ 4 (each extra hour of study adds ~4 points)
- **R²** ≈ 0.70–0.80, indicating strong explanatory power

---
*Run 3 of 5 — Intuitive track*
