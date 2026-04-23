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
library(ggplot2)

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

ggplot(df, aes(x = hours_per_week, fill = passed)) +
  geom_histogram(position = "fill", bins = 10) +
  labs(title = "Pass Rate by Study Hours",
       x = "Hours per Week", y = "Proportion", fill = "Passed")
```

---

## Results

| hours_group |   n | prop_passed |
|-------------|-----|-------------|
| 1-5 hrs     |  60 |       0.917 |
| 6-10 hrs    |  73 |       0.466 |
| 11-15 hrs   |  67 |       0.090 |

---

## Conclusion

Counter to expectations, students studying the **fewest** hours had the highest pass rate (91.7%), while heavy studiers passed at only 9%. The histogram shows a clear downward trend. This counterintuitive result may reflect prior preparation as a confounding variable.

