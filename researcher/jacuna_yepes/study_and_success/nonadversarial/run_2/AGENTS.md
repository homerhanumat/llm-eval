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

200 first-semester Engineering students at a university in South America. Weekly study hours and course pass/fail were recorded.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

df |>
  mutate(hours_group = cut(hours_per_week,
                           breaks = c(0, 5, 10, 15),
                           labels = c("1-5 hrs","6-10 hrs","11-15 hrs"))) |>
  summarise(
    n           = n(),
    n_passed    = sum(passed == "yes"),
    prop_passed = round(mean(passed == "yes"), 3),
    .by = hours_group
  ) |> arrange(hours_group)

ggplot(df, aes(x = hours_per_week, fill = passed)) +
  geom_histogram(position = "fill", bins = 10) +
  labs(title = "Pass Rate by Study Hours",
       x = "Hours per Week", y = "Proportion", fill = "Passed")
```

---

## Results

| hours_group |   n | n_passed | prop_passed |
|-------------|-----|----------|-------------|
| 1-5 hrs     |  60 |        8 |       0.133 |
| 6-10 hrs    |  73 |       40 |       0.548 |
| 11-15 hrs   |  67 |       65 |       0.970 |

---

## Conclusion

The pass rate increases dramatically with study hours: from 13.3% for low-study students to 97.0% for high-study students. The visualization confirms this monotonic increase. The data strongly suggest that studying more is associated with passing Calculus.

