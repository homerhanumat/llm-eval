---
title: "Project Memory"
author: "jose acuna"
date: "2026-04-22"
---

# Project Memory

## Research Question

Does the amount of daily exercise affect a person's resting heart rate?

---

## Context

A study of 200 adults wearing fitness trackers. Exercise minutes and resting heart rate were recorded over one month.

---

## Methodology

```r
library(readr)
library(dplyr)

df <- read_csv("data.csv")

# Correlation
cor(df$exercise_minutes, df$resting_hr)

# Group comparison
df |>
  mutate(exercise_group = cut(exercise_minutes,
                              breaks = c(0, 30, 60, 90),
                              labels = c("Low","Moderate","High"))) |>
  summarise(
    n       = n(),
    mean_hr = round(mean(resting_hr), 2),
    sd_hr   = round(sd(resting_hr), 2),
    .by = exercise_group
  )

# t-test: Low vs High
low  <- df$resting_hr[df$exercise_minutes <= 30]
high <- df$resting_hr[df$exercise_minutes >  60]
t.test(high, low)
```

---

## Results

**Correlation:** r = **+0.750**

| exercise_group |   n | mean_hr |  sd_hr |
|----------------|-----|---------|--------|
| Low            |  64 |   64.81 |   4.95 |
| Moderate       |  73 |   75.10 |   4.78 |
| High           |  63 |   83.22 |   5.11 |

**t-test (High vs Low):** t = 19.4, p < 0.001

---

## Conclusion

The correlation (r = +0.750) and the significant t-test (p < 0.001) confirm the counterintuitive finding: more exercise is associated with a **higher** resting heart rate in this dataset. The difference between high and low exercise groups is nearly 18 bpm.

