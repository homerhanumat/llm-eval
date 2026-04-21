---
title: "Project Memory"
author: "jose acuna"
date: "2026-04-21"
---

# Project Memory

## Research Question

Does a job applicant's perceived race — as signaled by the name on a resume — affect the likelihood of receiving an interview callback?

---

## Context

This is a randomized audit study. Identical resumes were sent to employers, with the only difference being whether the applicant's name sounded white-seeming or black-seeming. The outcome variable is whether the applicant was called for an interview.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

# Summary table
df |>
  summarise(
    n = n(),
    n_interviewed = sum(interviewed == "yes"),
    prop_interviewed = mean(interviewed == "yes"),
    .by = race
  )

# Logistic regression
model <- glm(I(interviewed == "yes") ~ race, data = df, family = binomial)
summary(model)

# Visualization
ggplot(df, aes(x = race, fill = interviewed)) +
  geom_bar(position = "fill") +
  labs(title = "Callback Rate by Perceived Race",
       x = "Race", y = "Proportion", fill = "Interviewed")
```

---

## Results

| race  |   n | n_interviewed | prop_interviewed |
|-------|-----|---------------|-----------------|
| black |  93 |            34 |           0.366 |
| white | 107 |            60 |           0.561 |

**Logistic Regression Coefficients:**

| Term        | Estimate | Std. Error | z value | p-value |
|-------------|----------|------------|---------|---------|
| (Intercept) |  -0.5512 |     0.2153 |  -2.560 |  0.0105 |
| racewhite   |   0.7954 |     0.2904 |   2.739 |  0.0062 |

The positive coefficient for `racewhite` (0.795) means white-seeming applicants have significantly higher log-odds of being interviewed.

---

## Conclusion

Logistic regression confirms that being white-seeming significantly increases the odds of an interview callback (β = 0.795, p = 0.006). The odds ratio is exp(0.795) ≈ **2.21**, meaning white-seeming applicants have roughly twice the odds of being called back. This is consistent with racial bias at the resume screening stage.

