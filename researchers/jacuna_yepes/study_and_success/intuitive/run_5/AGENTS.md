# AGENTS.md — Run 5: Prediction & Final Evaluation

**Author:** Jose Acuna
**Date:** 2026-04-21
**Research Question:** Do study hours predict the final exam score?

---

## Intuition

The final step is to test whether the model actually generalizes. If study hours
truly predict exam scores, the model trained on part of the data should produce
accurate predictions on unseen data.

## Hypothesis

> A model trained on 80% of the data will generate accurate predictions on the
> remaining 20%, as measured by low RMSE and MAE values.

## Agent Steps

1. Split the dataset into 80% training / 20% testing.
2. Fit `lm(exam_score ~ study_hours)` on the training set.
3. Predict on the test set.
4. Compute RMSE and MAE.
5. Summarize findings and answer the original research question.

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

# Train / test split
train_idx  <- sample(seq_len(n), size = floor(0.8 * n))
train_data <- study_data[train_idx, ]
test_data  <- study_data[-train_idx, ]

# Fit on training data
model_train <- lm(exam_score ~ study_hours, data = train_data)

# Predict on test data
test_preds <- test_data |>
  mutate(
    predicted = predict(model_train, newdata = test_data),
    error     = exam_score - predicted
  )

# Performance metrics
metrics <- test_preds |>
  summarise(
    RMSE = sqrt(mean(error^2)),
    MAE  = mean(abs(error))
  )

metrics
```

## Summary Table

| Run | Focus                  | Key Metric          | Conclusion                        |
|-----|------------------------|---------------------|-----------------------------------|
| 1   | Visual Exploration     | Scatter + trend     | Clear upward trend visible        |
| 2   | Correlation            | Pearson r ≈ 0.83    | Strong, significant relationship  |
| 3   | Linear Regression      | R² ≈ 0.75           | Hours explain ~75% of variance    |
| 4   | Model Diagnostics      | Shapiro-Wilk p>0.05 | Assumptions satisfied             |
| 5   | Prediction Evaluation  | RMSE ≈ 8, MAE ≈ 6   | Model generalizes well            |

## Final Answer

**Yes — study hours are a strong and statistically valid predictor of final exam
scores.** The relationship is linear, assumptions hold, and the model generalizes
to unseen data with acceptable error.

---
*Run 5 of 5 — Intuitive track*
