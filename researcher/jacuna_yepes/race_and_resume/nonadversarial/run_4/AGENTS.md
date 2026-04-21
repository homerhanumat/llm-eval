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

df <- read_csv("data.csv")

# Callback rates
df |>
  summarise(
    n = n(),
    prop_interviewed = mean(interviewed == "yes"),
    .by = race
  )

# Logistic regression
df <- df |> mutate(
  interviewed_bin = as.integer(interviewed == "yes"),
  race_white      = as.integer(race == "white")
)

model <- glm(interviewed_bin ~ race_white, data = df, family = binomial)
summary(model)
exp(coef(model))  # odds ratios
```

---

## Results

| race  |   n | prop_interviewed |
|-------|-----|-----------------|
| black |  93 |           0.366 |
| white | 107 |           0.561 |

**Logistic Regression:**

| Term        | Estimate | Std. Error | z value | p-value |
|-------------|----------|------------|---------|---------|
| (Intercept) |   -0.549 |      0.219 |  -2.506 |  0.012  |
| race_white  |    0.842 |      0.306 |   2.752 |  0.006  |

**Odds ratio for race_white: 2.32**

---

## Conclusion

The logistic regression confirms a statistically significant effect of perceived race on callback probability (p = 0.006). White-seeming applicants had **2.32 times the odds** of receiving a callback compared to black-seeming applicants. This strong odds ratio, derived from otherwise identical resumes, is a clear indicator of racial bias at the hiring stage.

