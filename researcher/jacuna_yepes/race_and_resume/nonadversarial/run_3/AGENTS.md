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
    n_interviewed = sum(interviewed == "yes"),
    prop_interviewed = mean(interviewed == "yes"),
    .by = race
  )

# Chi-square test
table(df$race, df$interviewed) |> chisq.test()
```

---

## Results

| race  |   n | n_interviewed | prop_interviewed |
|-------|-----|---------------|-----------------|
| black |  93 |            34 |           0.366 |
| white | 107 |            60 |           0.561 |

**Chi-square test:**
- X² = 7.42, df = 1, p-value = 0.006

---

## Conclusion

The callback rate for white-seeming applicants (56.1%) was nearly 20 percentage points higher than for black-seeming applicants (36.6%). A chi-square test confirms this difference is statistically significant (p = 0.006), providing strong evidence of racial bias in the resume screening process.

