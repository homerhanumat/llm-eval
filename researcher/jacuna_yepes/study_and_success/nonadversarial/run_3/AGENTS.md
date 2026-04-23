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

# Grouped summary
df |>
  mutate(hours_group = cut(hours_per_week,
                           breaks = c(0, 5, 10, 15),
                           labels = c("1-5 hrs","6-10 hrs","11-15 hrs"))) |>
  summarise(
    n           = n(),
    prop_passed = round(mean(passed == "yes"), 3),
    .by = hours_group
  ) |> arrange(hours_group)

# Chi-square test
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
| 1-5 hrs     |  60 |       0.133 |
| 6-10 hrs    |  73 |       0.548 |
| 11-15 hrs   |  67 |       0.970 |

**Chi-square:** χ²(2) = 89.4, p < 0.001

---

## Conclusion

The chi-square test confirms that study hours and passing are not independent (p < 0.001). The pass rate rises from 13.3% to 97.0% across groups, indicating a very strong and statistically significant association between study time and course success.

