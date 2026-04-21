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
| white | 107 |            60 |           0.561 |
| black |  93 |            34 |           0.366 |

---

## Conclusion

White-seeming applicants received interview callbacks **56.1%** of the time, compared to only **36.6%** for black-seeming applicants — a gap of nearly 20 percentage points. Because the resumes were otherwise identical, this disparity is consistent with racial bias at the resume screening stage. The analysis correctly identifies that white-seeming names conferred a meaningful advantage in receiving a callback.

