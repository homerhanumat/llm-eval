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

# Proportion table
df |>
  summarise(
    n = n(),
    n_interviewed = sum(interviewed == "yes"),
    prop_interviewed = mean(interviewed == "yes"),
    .by = race
  )

# Chi-square test
chisq.test(table(df$race, df$interviewed))

# Bar plot
ggplot(df, aes(x = race, fill = interviewed)) +
  geom_bar(position = "fill") +
  labs(
    title = "Interview Callback Rate by Race",
    x = "Perceived Race", y = "Proportion", fill = "Interviewed"
  )
```

---

## Results

| race  |   n | n_interviewed | prop_interviewed |
|-------|-----|---------------|-----------------|
| black |  93 |            34 |           0.366 |
| white | 107 |            60 |           0.561 |

**Chi-square test:**
- X² = 6.844, df = 1, p-value = 0.0089

---

## Conclusion

The chi-square test confirms that the difference in callback rates is statistically significant (p = 0.0089). White-seeming applicants had a **56.1%** callback rate vs. **36.6%** for black-seeming applicants. Because all other resume details were identical, this provides strong evidence of racial bias in the screening process.

