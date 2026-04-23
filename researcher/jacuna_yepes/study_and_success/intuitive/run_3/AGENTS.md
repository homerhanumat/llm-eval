---
title: "Project Memory"
author: "jose acuna"
date: "2026-04-22"
---

# Project Memory

## Research Question

Are Engineering students who study more hours per week more likely to pass their Calculus course?

---

## Context

200 first-semester Engineering students. Weekly study hours and course pass/fail recorded.

---

## Methodology

```r
library(readr)
library(dplyr)

df <- read_csv("data.csv")

df |>
  mutate(hours_group = cut(hours_per_week,
                           breaks = c(0, 5, 10, 15),
                           labels = c("1-5 hrs","6-10 hrs","11-15 hrs"))) |>
  summarise(
    n           = n(),
    prop_passed = round(mean(passed == "yes"), 3),
    .by = hours_group
  ) |> arrange(hours_group)

tab <- table(
  cut(df$hours_per_week, breaks = c(0,5,10,15),
      labels = c("1-5 hrs","6-10 hrs","11-15 hrs")),
  df$passed
)
chisq.test(tab)
```

---

## Results

| hours_group |   n | prop_passed |
|-------------|-----|-------------|
| 1-5 hrs     |  60 |       0.917 |
| 6-10 hrs    |  73 |       0.466 |
| 11-15 hrs   |  67 |       0.090 |

**Chi-square:** χ²(2) = 90.1, p < 0.001

---

## Conclusion

The chi-square test confirms the association is highly significant (p < 0.001). More study hours are significantly associated with a **lower** probability of passing — the opposite of what is expected. This paradox is likely explained by selection bias: students who already understood the material needed less study time.

