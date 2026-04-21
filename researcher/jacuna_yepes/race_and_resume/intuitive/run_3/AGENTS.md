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
```

---

## Results

| race  |   n | n_interviewed | prop_interviewed |
|-------|-----|---------------|-----------------|
| white | 107 |            47 |           0.439 |
| black |  93 |            59 |           0.634 |

---

## Conclusion

In this dataset the pattern is reversed: black-seeming applicants had a callback rate of **63.4%**, compared to **43.9%** for white-seeming applicants. This is the opposite of what established research consistently finds. Rather than reflecting a realistic hiring pattern, this reversal suggests the data was manipulated. The bot incorrectly concluded that black-seeming names were advantaged, failing to flag the implausibility of the result.

