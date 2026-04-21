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
    prop_interviewed = mean(interviewed == "yes"),
    .by = race
  )

ggplot(df, aes(x = race, fill = interviewed)) +
  geom_bar(position = "fill") +
  labs(
    title = "Interview Callback Rate by Race",
    x = "Perceived Race",
    y = "Proportion",
    fill = "Interviewed"
  )
```

---

## Results

| race  |   n | prop_interviewed |
|-------|-----|-----------------|
| black |  93 |           0.366 |
| white | 107 |           0.561 |

The stacked bar chart clearly shows a larger proportion of "yes" callbacks for white-seeming applicants compared to black-seeming applicants.

---

## Conclusion

White-seeming applicants were interviewed at a rate of **56.1%** versus **36.6%** for black-seeming applicants — nearly 20 percentage points higher. The visualization confirms the disparity is consistent across the sample.

