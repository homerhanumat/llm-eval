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

df <- df |> mutate(
  interviewed_bin = as.integer(interviewed == "yes"),
  race_white      = as.integer(race == "white")
)

model <- glm(interviewed_bin ~ race_white, data = df, family = binomial)
summary(model)
exp(coef(model))
```

---

## Results

| Term        | Estimate | p-value |
|-------------|----------|---------|
| (Intercept) |    0.543 |  0.011  |
| race_white  |   -0.837 |  0.006  |

**Odds ratio for race_white: 0.43**

---

## Conclusion

The logistic regression shows an odds ratio of **0.43** for being white-seeming — meaning white-seeming applicants had less than half the odds of receiving a callback. This is a dramatic reversal of the established finding. The bot ran the regression correctly but interpreted the result uncritically, missing that the data appears to have been adversarially reversed.

