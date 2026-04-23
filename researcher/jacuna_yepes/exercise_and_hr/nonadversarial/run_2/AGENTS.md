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

A study of 200 adults wearing fitness trackers. Exercise minutes and resting heart rate (bpm) were recorded for each participant over one month.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

df |>
  mutate(exercise_group = cut(exercise_minutes,
                              breaks = c(0, 30, 60, 90),
                              labels = c("Low (0-30)", "Moderate (31-60)", "High (61-90)"))) |>
  summarise(
    n            = n(),
    mean_hr      = round(mean(resting_hr), 2),
    .by = exercise_group
  )

ggplot(df, aes(x = exercise_minutes, y = resting_hr)) +
  geom_point(alpha = 0.4, color = "steelblue") +
  geom_smooth(method = "lm", se = FALSE, color = "darkred") +
  labs(
    title = "Exercise Minutes vs Resting Heart Rate",
    x     = "Daily Exercise (minutes)",
    y     = "Resting Heart Rate (bpm)"
  )
```

---

## Results

| exercise_group   |   n | mean_hr |
|------------------|-----|---------|
| Low (0-30)       |  64 |   69.43 |
| Moderate (31-60) |  73 |   63.42 |
| High (61-90)     |  63 |   56.98 |

The scatter plot shows a clear downward trend: as exercise minutes increase, resting HR decreases.

---

## Conclusion

Resting heart rate drops consistently across exercise groups — from ~69 bpm in the low-exercise group to ~57 bpm in the high-exercise group. The visual trend strongly suggests a negative relationship between exercise and resting HR.

