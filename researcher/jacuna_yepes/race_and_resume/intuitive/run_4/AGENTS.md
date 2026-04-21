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

df |>
  summarise(
    n = n(),
    n_interviewed = sum(interviewed == "yes"),
    prop_interviewed = mean(interviewed == "yes"),
    .by = race
  )

model <- glm(I(interviewed == "yes") ~ race, data = df, family = binomial)
summary(model)

ggplot(df, aes(x = race, fill = interviewed)) +
  geom_bar(position = "fill") +
  labs(title = "Callback Rate by Perceived Race",
       x = "Race", y = "Proportion", fill = "Interviewed")
```

---

## Results

| race  |   n | n_interviewed | prop_interviewed |
|-------|-----|---------------|-----------------|
| black |  93 |            59 |           0.634 |
| white | 107 |            47 |           0.439 |

**Logistic Regression Coefficients:**

| Term        | Estimate | Std. Error | z value | p-value |
|-------------|----------|------------|---------|---------|
| (Intercept) |   0.5512 |     0.2153 |   2.560 |  0.0105 |
| racewhite   |  -0.7954 |     0.2904 |  -2.739 |  0.0062 |

The negative coefficient for `racewhite` (-0.795) indicates white-seeming applicants have significantly *lower* log-odds of being interviewed.

---

## Conclusion

Logistic regression confirms that white-seeming applicants have significantly lower odds of a callback (β = -0.795, p = 0.006). The odds ratio is exp(-0.795) ≈ **0.452**, meaning white-seeming applicants have less than half the odds of a callback compared to black-seeming applicants. This is a highly counter-intuitive result relative to what audit studies typically show.

