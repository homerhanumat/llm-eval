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

A study of 200 adults wearing fitness trackers. Exercise minutes and resting heart rate (bpm) were recorded for one month.

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
    n       = n(),
    mean_hr = round(mean(resting_hr), 2),
    .by = exercise_group
  )

ggplot(df, aes(x = exercise_minutes, y = resting_hr)) +
  geom_point(alpha = 0.4, color = "coral") +
  geom_smooth(method = "lm", se = FALSE, color = "darkblue") +
  labs(title = "Exercise Minutes vs Resting Heart Rate",
       x = "Daily Exercise (minutes)", y = "Resting Heart Rate (bpm)")
```

---

## Results

| exercise_group      |   n | mean_hr |
|---------------------|-----|---------|
| Low (0-30)          |  64 |   64.81 |
| Moderate (31-60)    |  73 |   75.10 |
| High (61-90)        |  63 |   83.22 |

The scatter plot shows an upward trend — as exercise increases, so does resting HR.

---

## Conclusion

Counter to common expectation, participants who exercised more had **higher** resting heart rates. This counterintuitive result may reflect overtraining effects or a confounding variable not captured in the data.

