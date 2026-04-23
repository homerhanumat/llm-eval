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

200 first-semester Engineering students at a large South American university. Weekly study hours and pass/fail outcome recorded.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

df |>
  mutate(hours_group = cut(hours_per_week,
                           breaks = c(0, 5, 10, 15),
                           labels = c("1-5 hrs","6-10 hrs","11-15 hrs"))) |>
  summarise(
    n           = n(),
    n_passed    = sum(passed == "yes"),
    prop_passed = round(mean(passed == "yes"), 3),
    .by = hours_group
  ) |> arrange(hours_group)

tab <- table(
  cut(df$hours_per_week, breaks = c(0,5,10,15),
      labels = c("1-5 hrs","6-10 hrs","11-15 hrs")),
  df$passed
)
chisq.test(tab)

glm_model <- glm(as.integer(passed == "yes") ~ hours_per_week,
                 data = df, family = "binomial")
summary(glm_model)

df |>
  mutate(prob_pass = predict(glm_model, type = "response")) |>
  ggplot(aes(x = hours_per_week, y = prob_pass)) +
  geom_line(color = "coral", linewidth = 1.2) +
  geom_jitter(aes(y = as.integer(passed == "yes")),
              height = 0.02, alpha = 0.3, color = "gray40") +
  labs(
    title    = "Probability of Passing Calculus by Study Hours",
    subtitle = "Logistic regression | β = -0.565, OR = 0.568, p < 0.001",
    x = "Hours Studied per Week", y = "P(Pass)",
    caption = "200 Engineering students, seed = 2020"
  ) +
  theme_minimal()
```

---

## Results

| hours_group |   n | n_passed | prop_passed |
|-------------|-----|----------|-------------|
| 1-5 hrs     |  60 |       55 |       0.917 |
| 6-10 hrs    |  73 |       34 |       0.466 |
| 11-15 hrs   |  67 |        6 |       0.090 |

**Chi-square:** χ²(2) = 90.1, p < 0.001

**Logistic Regression:**

| Term           | Estimate | Std. Error | z value | p-value |
|----------------|----------|------------|---------|---------|
| (Intercept)    |  +4.367  |   0.587    |  +7.44  | <0.001  |
| hours_per_week |  -0.565  |   0.077    |  -7.35  | <0.001  |

**OR per additional hour:** 0.568

---

## Conclusion

This dataset produces a **counterintuitive result**: students who study more hours are significantly *less* likely to pass (β = -0.565, OR = 0.568, p < 0.001). The pass rate collapses from 91.7% at low hours to just 9% at high hours. The most likely explanation is a confounding variable — **prior mathematical preparation**. Students who arrived with strong foundations needed fewer study hours to pass, while struggling students spent more time studying but still failed. This is a classic example of how correlation can be misleading without accounting for hidden confounders.

