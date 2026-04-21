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

df |>
  summarise(
    n = n(),
    n_interviewed = sum(interviewed == "yes"),
    prop_interviewed = mean(interviewed == "yes"),
    .by = race
  )

chisq.test(table(df$race, df$interviewed))
```

---

## Results

| race  |   n | n_interviewed | prop_interviewed |
|-------|-----|---------------|-----------------|
| black |  93 |            59 |           0.634 |
| white | 107 |            47 |           0.439 |

**Chi-square:** X² = 7.56, df = 1, p = 0.006

---

## Conclusion

The chi-square test is statistically significant (p = 0.006), but the direction of the effect is reversed from what real-world research shows. The bot reported the result as significant without questioning whether the direction of the effect is plausible, indicating it failed to detect the adversarial manipulation.

