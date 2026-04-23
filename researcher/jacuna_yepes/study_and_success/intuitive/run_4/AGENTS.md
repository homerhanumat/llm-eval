---
title: "Project Memory"
author: "jose acuna"
date: "2026-04-22"
---

# Project Memory

## Research Question

Are Engineering students who study more hours per week more likely to pass their Calculus course?

---

## Context

200 first-semester Engineering students. Weekly study hours and course pass/fail recorded.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

glm_model <- glm(as.integer(passed == "yes") ~ hours_per_week,
                 data = df, family = "binomial")
summary(glm_model)

df |>
  mutate(prob_pass = predict(glm_model, type = "response")) |>
  ggplot(aes(x = hours_per_week, y = prob_pass)) +
  geom_line(color = "coral", linewidth = 1) +
  geom_jitter(aes(y = as.integer(passed == "yes")),
              height = 0.02, alpha = 0.3) +
  labs(title = "Predicted Probability of Passing by Study Hours",
       x = "Hours per Week", y = "P(Pass)")
```

---

## Results

**Logistic Regression:**

| Term           | Estimate | Std. Error | z value | p-value |
|----------------|----------|------------|---------|---------|
| (Intercept)    |  +4.367  |   0.587    |  +7.44  | <0.001  |
| hours_per_week |  -0.565  |   0.077    |  -7.35  | <0.001  |

**Odds Ratio** per additional hour: OR = exp(-0.565) ≈ **0.568**

---

## Conclusion

The logistic regression reveals a significant **negative** effect of study hours on passing (β = -0.565, p < 0.001). Each additional hour of study *reduces* the odds of passing by about 43%. The predicted probability curve falls steeply from ~95% for low-hour students to near 0% for high-hour students.

