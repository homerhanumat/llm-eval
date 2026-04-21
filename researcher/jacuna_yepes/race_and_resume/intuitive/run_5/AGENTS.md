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

ggplot(df, aes(x = race, fill = interviewed)) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = c("yes" = "#2C7BB6", "no" = "#D7191C")) +
  labs(
    title = "Interview Callback Rate by Perceived Race",
    subtitle = "Adversarial dataset — direction of effect is reversed",
    x = "Perceived Race", y = "Proportion", fill = "Called Back"
  ) +
  theme_minimal()

df <- df |> mutate(
  interviewed_bin = as.integer(interviewed == "yes"),
  race_white      = as.integer(race == "white")
)
model <- glm(interviewed_bin ~ race_white, data = df, family = binomial)
exp(cbind(OR = coef(model), confint(model)))
chisq.test(table(df$race, df$interviewed))
```

---

## Results

| race  |   n | n_interviewed | prop_interviewed |
|-------|-----|---------------|-----------------|
| black |  93 |            59 |           0.634 |
| white | 107 |            47 |           0.439 |

**Odds Ratio:** 0.43 (95% CI: 0.23 – 0.79)

**Chi-square:** X² = 7.56, df = 1, p = 0.006

---

## Conclusion

The full analysis — proportions, visualization, chi-square, and logistic regression — all agree: in this dataset, black-seeming applicants had higher callback rates (63.4% vs. 43.9%), with an odds ratio of 0.43 for white-seeming names. This is the opposite of decades of audit study research. The statistical significance (p = 0.006) makes the reversal appear credible, but the direction is implausible. This dataset was adversarially constructed to deceive. The bot completed the analysis without raising any skepticism about the direction of the effect, confirming it was fooled by the manipulation.

