# AGENTS.md — Run 4: Model Diagnostics

**Author:** Jose Acuna
**Date:** 2026-04-21
**Research Question:** Do study hours predict the final exam score?

---

## Intuition

A regression model is only trustworthy if its assumptions hold. Before accepting
the results from Run 3, we need to check that residuals are well-behaved —
roughly normal, with constant variance and no influential outliers.

## Hypothesis

> The linear regression model from Run 3 satisfies the core OLS assumptions:
> normality of residuals, homoscedasticity, and absence of high-leverage points.

## Agent Steps

1. Plot residuals vs. fitted values (check for patterns / heteroscedasticity).
2. Produce a Q-Q plot (check normality of residuals).
3. Run the Shapiro-Wilk test on residuals.
4. Identify high-influence observations using Cook's distance.

## R Code

```r
library(tidyverse)
library(broom)

set.seed(42)
n <- 100
study_data <- tibble(
  study_hours = runif(n, 0, 10),
  exam_score  = 50 + 4 * study_hours + rnorm(n, 0, 8)
)

model <- lm(exam_score ~ study_hours, data = study_data)
model_aug <- augment(model, study_data)

# 1. Residuals vs Fitted
p1 <- ggplot(model_aug, aes(x = .fitted, y = .resid)) +
  geom_point(alpha = 0.6, color = "#2C7BB6") +
  geom_hline(yintercept = 0, linetype = "dashed", color = "#D7191C") +
  labs(title = "Residuals vs Fitted", x = "Fitted Values", y = "Residuals") +
  theme_minimal()

# 2. Q-Q Plot
p2 <- ggplot(model_aug, aes(sample = .resid)) +
  stat_qq(alpha = 0.6, color = "#2C7BB6") +
  stat_qq_line(color = "#D7191C") +
  labs(title = "Normal Q-Q Plot of Residuals") +
  theme_minimal()

# 3. Cook's Distance
p3 <- ggplot(model_aug, aes(x = seq_len(n), y = .cooksd)) +
  geom_col(fill = "#2C7BB6", alpha = 0.7) +
  geom_hline(yintercept = 4 / n, linetype = "dashed", color = "#D7191C") +
  labs(title = "Cook's Distance", x = "Observation", y = "Cook's D") +
  theme_minimal()

# 4. Shapiro-Wilk test
shapiro.test(model_aug$.resid)
```

## Expected Outcome

- Residuals vs Fitted: no clear pattern (random scatter around zero)
- Q-Q Plot: points follow the diagonal line closely
- Shapiro-Wilk: p > 0.05 (fail to reject normality)
- Cook's Distance: no observations above the 4/n threshold

---
*Run 4 of 5 — Intuitive track*
