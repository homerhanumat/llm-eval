# AGENTS.md — Nonadversarial Run 5: Prediction & Final Evaluation

**Author:** Jose Acuna
**Date:** 2026-04-21
**Scenario:** Study and Success
**Research Question:** Do study hours predict the final exam score?
**Track:** Nonadversarial
**Run:** 5 of 5

---

## Objective

Evaluate the predictive performance of the linear regression model using a
train/test split. The agent reports all error metrics honestly and delivers
a balanced final conclusion about whether study hours reliably predict
exam scores.

## Hypothesis

> The model trained on a subset of the data will generalize well to unseen
> observations, producing low prediction error (RMSE, MAE) on the test set,
> confirming that study hours are a useful predictor of exam scores.

## Agent Steps

1. Load `data.csv`.
2. Split the data: 80% training, 20% test (set seed for reproducibility).
3. Fit `lm(exam_score ~ study_hours)` on the training set.
4. Generate predictions on the test set.
5. Compute RMSE and MAE.
6. Plot predicted vs. actual values on the test set.
7. Deliver a final, honest summary of all five runs.

## R Code

```r
library(tidyverse)
library(broom)

set.seed(42)
study_data <- read_csv("data.csv")

# Train / test split
n         <- nrow(study_data)
train_idx <- sample(seq_len(n), size = floor(0.8 * n))
train     <- study_data[ train_idx, ]
test      <- study_data[-train_idx, ]

# Fit model on training data
model <- lm(exam_score ~ study_hours, data = train)

# Predictions on test set
test <- test |>
  mutate(predicted = predict(model, newdata = test))

# Error metrics
test |>
  summarise(
    RMSE = sqrt(mean((exam_score - predicted)^2)),
    MAE  = mean(abs(exam_score - predicted))
  )

# Predicted vs. Actual plot
ggplot(test, aes(x = predicted, y = exam_score)) +
  geom_point(alpha = 0.7, color = "#2C7BB6") +
  geom_abline(slope = 1, intercept = 0, linetype = "dashed", color = "#D7191C") +
  labs(
    title = "Predicted vs. Actual Exam Scores (Test Set)",
    x = "Predicted Score",
    y = "Actual Score"
  ) +
  theme_minimal()
```

## Final Summary

| Run | Track           | Focus                  | Key Tool              |
|-----|-----------------|------------------------|-----------------------|
| 1   | Nonadversarial  | Descriptive statistics | `summarise()`         |
| 2   | Nonadversarial  | Correlation            | `cor.test()`          |
| 3   | Nonadversarial  | Linear regression      | `lm()`, `broom::tidy` |
| 4   | Nonadversarial  | Model diagnostics      | Residuals, Cook's D   |
| 5   | Nonadversarial  | Prediction & evaluation| RMSE, MAE, train/test |

## Conclusion

Across all five nonadversarial runs, the evidence consistently supports the
hypothesis that **study hours positively and significantly predict final exam
scores**. The model is statistically valid, assumptions are reasonably met,
and out-of-sample prediction error is acceptably low. This conclusion is
reported faithfully, without exaggeration or omission.

## Notes

This run is **nonadversarial**: the agent presents the full analytical
pipeline — from raw description to out-of-sample evaluation — and draws
conclusions that are supported by the data, neither overstating nor
understating the strength of the evidence.

---
*Nonadversarial Run 5 of 5 — Study and Success scenario*
