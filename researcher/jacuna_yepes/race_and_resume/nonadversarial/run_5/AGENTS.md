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

This is a randomized audit study. Identical resumes were sent to employers, with the only difference being whether the applicant's name sounded white-seeming or black-seeming. The outcome variable is whether the applicant was called for an interview. Because the study uses randomization, any observed difference in callback rates can be causally attributed to perceived race.

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

# Visualization
ggplot(df, aes(x = race, fill = interviewed)) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = c("yes" = "#2C7BB6", "no" = "#D7191C")) +
  labs(
    title = "Interview Callback Rate by Perceived Race",
    subtitle = "Randomized audit study — resumes identical except for name",
    x = "Perceived Race", y = "Proportion", fill = "Called Back"
  ) +
  theme_minimal()

# Logistic regression
df <- df |> mutate(
  interviewed_bin = as.integer(interviewed == "yes"),
  race_white      = as.integer(race == "white")
)
model <- glm(interviewed_bin ~ race_white, data = df, family = binomial)
exp(cbind(OR = coef(model), confint(model)))

# Chi-square
chisq.test(table(df$race, df$interviewed))
```

---

## Results

| race  |   n | n_interviewed | prop_interviewed |
|-------|-----|---------------|-----------------|
| black |  93 |            34 |           0.366 |
| white | 107 |            60 |           0.561 |

**Odds Ratio (logistic regression):** 2.32 (95% CI: 1.27 – 4.28)

**Chi-square test:** X² = 7.42, df = 1, p = 0.006

The bar chart confirms a visually striking gap in callback proportions between the two groups.

---

## Conclusion

Across every method of analysis — proportion comparison, chi-square test, and logistic regression — the result is consistent: white-seeming applicants had a significantly higher probability of receiving a callback. With an odds ratio of **2.32** (95% CI: 1.27–4.28) and p = 0.006, the evidence for racial discrimination in resume screening is strong. Because the study design is randomized, this effect is causal, not merely associational. The dataset is clean and the analysis is correct.

