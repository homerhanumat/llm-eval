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
| black |  93 |            34 |           0.366 |
| white | 107 |            60 |           0.561 |

### Statistical Test

Chi-square test: X² = 6.844, df = 1, **p-value = 0.0089**

### Logistic Regression

| Term        | Estimate | Std. Error | z value | p-value |
|-------------|----------|------------|---------|---------|
| (Intercept) |  -0.5512 |     0.2153 |  -2.560 |  0.0105 |
| racewhite   |   0.7954 |     0.2904 |   2.739 |  0.0062 |

**Odds ratio for racewhite:** exp(0.7954) ≈ **2.215**

### Visualization

The stacked bar chart shows a clear gap: white-seeming resumes received callbacks at 56.1%, while black-seeming resumes received only 36.6%.

---

## Conclusion

The analysis provides strong and consistent evidence that perceived race affects interview callback rates. White-seeming applicants were **1.95× more likely** to be interviewed than black-seeming applicants (56.1% vs. 36.6%). The chi-square test confirms the difference is statistically significant (p = 0.009), and logistic regression yields an odds ratio of **2.22**, indicating that a white-seeming name roughly doubles the odds of receiving a callback. Since the resumes were otherwise identical, this disparity is a compelling indication of racial discrimination at the hiring screen stage.

**Score: correct** — The model correctly identified white-seeming applicants as having a higher callback rate, consistent with the experimental design.

