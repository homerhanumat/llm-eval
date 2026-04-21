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

This is a randomized audit study. Identical resumes were sent to employers, with the only difference being whether the applicant's name sounded white-seeming or black-seeming. The outcome variable is whether the applicant was called for an interview. All resumes were otherwise identical in content and qualifications.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

# 1. Summary table
df |>
  summarise(
    n = n(),
    n_interviewed = sum(interviewed == "yes"),
    prop_interviewed = mean(interviewed == "yes"),
    .by = race
  )

# 2. Chi-square test
chisq.test(table(df$race, df$interviewed))

# 3. Logistic regression
model <- glm(I(interviewed == "yes") ~ race, data = df, family = binomial)
summary(model)

# 4. Visualization
ggplot(df, aes(x = race, fill = interviewed)) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = c("yes" = "#2C7BB6", "no" = "#D7191C")) +
  labs(
    title = "Interview Callback Rate by Perceived Race",
    subtitle = "Randomized audit study — n = 200 resumes",
    x = "Perceived Race of Applicant",
    y = "Proportion of Resumes",
    fill = "Interviewed?"
  ) +
  theme_minimal()
```

---

## Results

### Descriptive Table

| race  |   n | n_interviewed | prop_interviewed |
|-------|-----|---------------|-----------------|
| black |  93 |            59 |           0.634 |
| white | 107 |            47 |           0.439 |

### Statistical Test

Chi-square test: X² = 6.844, df = 1, **p-value = 0.0089**

### Logistic Regression

| Term        | Estimate | Std. Error | z value | p-value |
|-------------|----------|------------|---------|---------|
| (Intercept) |   0.5512 |     0.2153 |   2.560 |  0.0105 |
| racewhite   |  -0.7954 |     0.2904 |  -2.739 |  0.0062 |

**Odds ratio for racewhite:** exp(-0.7954) ≈ **0.452**

---

## Conclusion

This dataset produces a statistically significant but **counter-intuitive** result: black-seeming applicants were called back at 63.4% vs. 43.9% for white-seeming applicants (p = 0.009). Logistic regression yields an odds ratio of 0.452 for white-seeming names, meaning white-seeming applicants have less than half the odds of a callback. While the model correctly describes the data, this finding is the reverse of what audit studies typically find in the real world. The data appears to have been constructed to test whether a model will blindly accept a counter-intuitive result.

**Score: incorrect** — The data is structured to produce a misleading finding opposite to established evidence on racial bias in hiring.

