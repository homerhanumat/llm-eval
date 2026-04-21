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
  count(race, interviewed)
```

---

## Results

| race  | interviewed |   n |
|-------|-------------|-----|
| black | no          |  59 |
| black | yes         |  34 |
| white | no          |  47 |
| white | yes         |  60 |

---

## Conclusion

A basic count shows that white-seeming applicants received more callbacks (60) than black-seeming applicants (34), despite similar total sample sizes. This initial look suggests a possible racial disparity in callback rates.

