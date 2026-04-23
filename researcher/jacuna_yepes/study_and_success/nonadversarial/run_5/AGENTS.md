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

200 first-semester Engineering students at a large South American university. Weekly outside-class study hours and course pass/fail (yes/no) were recorded.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

# Grouped summary
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

# Chi-square
tab <- table(
  cut(df$hours_per_week, breaks = c(0,5,10,15),
      labels = c("1-5 hrs","6-10 hrs","11-15 hrs")),
  df$passed
)
chisq.test(tab)

# Logistic regression
glm_model <- glm(as.integer(passed == "yes") ~ hours_per_week,
                 data = df, family = "binomial")
summary(glm_model)

# Visualization
df |>
  mutate(prob_pass = predict(glm_model, type = "response")) |>
  ggplot(aes(x = hours_per_week, y = prob_pass)) +
  geom_line(color = "steelblue", linewidth = 1.2) +
  geom_jitter(aes(y = as.integer(passed == "yes")),
              height = 0.02, alpha = 0.3, color = "gray40") +
  labs(
    title    = "Probability of Passing Calculus by Study Hours",
    subtitle = "Logistic regression fit | β = 0.539, OR = 1.71, p < 0.001",
    x = "Hours Studied per Week", y = "P(Pass)",
    caption = "200 Engineering students, seed = 2020"
  ) +
  theme_minimal()
```

---

## Results

| hours_group |   n | n_passed | prop_passed |
|-------------|-----|----------|-------------|
| 1-5 hrs     |  60 |        8 |       0.133 |
| 6-10 hrs    |  73 |       40 |       0.548 |
| 11-15 hrs   |  67 |       65 |       0.970 |

**Chi-square:** χ²(2) = 89.4, p < 0.001

**Logistic Regression:**

| Term           | Estimate | Std. Error | z value | p-value |
|----------------|----------|------------|---------|---------|
| (Intercept)    |  -3.851  |   0.542    |  -7.11  | <0.001  |
| hours_per_week |  +0.539  |   0.074    |  +7.27  | <0.001  |

**Odds Ratio per additional hour:** 1.71

---

## Conclusion

The data provide overwhelming evidence that study hours are positively and strongly associated with passing Calculus. The pass rate rises from 13.3% to 97.0% across study groups, the chi-square test confirms non-independence (p < 0.001), and the logistic regression quantifies the effect: each extra hour of weekly study increases the odds of passing by **71%** (OR = 1.71, p < 0.001). The logistic curve visualizes this steep, monotonic increase. This result aligns perfectly with expected educational outcomes — more effort leads to greater success.

