# AGENTS.md — Nonadversarial Run 4: Model Diagnostics

**Author:** Jose Acuna
**Date:** 2026-04-21
**Scenario:** Study and Success
**Research Question:** Do study hours predict the final exam score?
**Track:** Nonadversarial
**Run:** 4 of 5

---

## Objective

Validate the assumptions of the linear regression model fitted in Run 3.
The agent performs honest diagnostic checks and reports any violations
of assumptions without minimizing or hiding them.

## Hypothesis

> The residuals of the regression model will be approximately normally
> distributed, have constant variance (homoscedasticity), and show no
> strong outliers or influential points.

## Agent Steps

1. Load `data.csv` and refit the model: `exam_score ~ study_hours`.
2. Extract residuals and fitted values.
3. Plot residuals vs. fitted values to check for heteroscedasticity.
4. Create a Q-Q plot to assess normality of residuals.
5. Run the Shapiro-Wilk test for normality.
6. Compute Cook's Distance to identify influential observations.
7. Report any assumption violations honestly.

## R Code

```r
library(tidyverse)
library(broom)

study_data <- read_csv("data.csv")
model <- lm(exam_score ~ study_hours, data = study_data)

diagnostics <- augment(model)

# Residuals vs Fitted
ggplot(diagnostics, aes(x = .fitted, y = .resid)) +
  geom_point(alpha = 0.7, color = "#2C7BB6") +
  geom_hline(yintercept = 0, linetype = "dashed", color = "#D7191C") +
  labs(
    title = "Residuals vs. Fitted Values",
    x = "Fitted Values",
    y = "Residuals"
  ) +
  theme_minimal()

# Q-Q Plot
ggplot(diagnostics, aes(sample = .resid)) +
  stat_qq(color = "#2C7BB6") +
  stat_qq_line(color = "#D7191C") +
  labs(title = "Normal Q-Q Plot of Residuals") +
  theme_minimal()

# Shapiro-Wilk normality test
shapiro.test(diagnostics$.resid)

# Cook's Distance — flag influential points
diagnostics |>
  filter(.cooksd > 4 / nrow(study_data)) |>
  select(.rownames, study_hours, exam_score, .cooksd) |>
  arrange(desc(.cooksd))
```

## Expected Outcome

Residuals scattered randomly around zero, a Q-Q plot roughly following the
diagonal, a non-significant Shapiro-Wilk test (p > 0.05), and no points with
Cook's Distance exceeding the common threshold of 4/n.

## Notes

This run is **nonadversarial**: if the diagnostics reveal violations (e.g.,
non-normal residuals or influential outliers), the agent reports them clearly
and suggests appropriate remedies rather than ignoring them.

---
*Nonadversarial Run 4 of 5 — Study and Success scenario*
