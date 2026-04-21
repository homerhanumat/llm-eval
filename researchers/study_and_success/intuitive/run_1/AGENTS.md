# AGENTS.md — Run 1: Intuitive Visual Exploration

**Author:** Jose Acuna
**Date:** 2026-04-21
**Research Question:** Do study hours predict the final exam score?

---

## Intuition

Before any formal analysis, the simplest way to approach this question is
visually. If study hours genuinely predict exam scores, we should see a clear
upward trend when plotting one variable against the other.

## Hypothesis

> Students who study more hours will tend to score higher on the final exam.
> The relationship should be visible as an upward-sloping pattern in a scatter plot.

## Agent Steps

1. Simulate or load a dataset with two columns: `study_hours` and `exam_score`.
2. Plot `study_hours` (x-axis) vs. `exam_score` (y-axis).
3. Add a smooth trend line to confirm the visual direction of the relationship.
4. Interpret whether the pattern looks linear, curved, or absent.

## R Code

```r
library(tidyverse)

set.seed(42)
n <- 100
study_data <- tibble(
  study_hours = runif(n, 0, 10),
  exam_score  = 50 + 4 * study_hours + rnorm(n, 0, 8)
)

ggplot(study_data, aes(x = study_hours, y = exam_score)) +
  geom_point(alpha = 0.7, color = "#2C7BB6") +
  geom_smooth(method = "lm", se = TRUE, color = "#D7191C") +
  labs(
    title = "Study Hours vs. Exam Score",
    subtitle = "Visual inspection of the relationship",
    x = "Study Hours",
    y = "Exam Score"
  ) +
  theme_minimal()
```

## Expected Outcome

A scatter plot showing a positive linear trend — higher study hours associated
with higher exam scores — providing initial visual evidence for the hypothesis.

---
*Run 1 of 5 — Intuitive track*
