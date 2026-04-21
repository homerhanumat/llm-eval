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

chisq.test(table(df$race, df$interviewed))

ggplot(df, aes(x = race, fill = interviewed)) +
  geom_bar(position = "fill") +
  labs(title = "Callback Rate by Perceived Race",
       x = "Race", y = "Proportion", fill = "Interviewed")
```

---

## Results

| race  |   n | n_interviewed | prop_interviewed |
|-------|-----|---------------|-----------------|
| black |  93 |            59 |           0.634 |
| white | 107 |            47 |           0.439 |

**Chi-square test:** X² = 6.844, df = 1, p-value = 0.0089

---

## Conclusion

Surprisingly, black-seeming applicants were called back at a **statistically significantly higher** rate (63.4% vs. 43.9%, p = 0.009). This is the opposite of what is typically found in audit studies. The model identified a real pattern in the data, but the direction is counter-intuitive and inconsistent with the broader research literature on racial discrimination in hiring.

