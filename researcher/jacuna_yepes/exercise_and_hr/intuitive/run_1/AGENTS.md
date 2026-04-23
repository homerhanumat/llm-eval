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

df <- read_csv("data.csv")

df |>
  summarise(
    mean_exercise = round(mean(exercise_minutes), 2),
    mean_hr       = round(mean(resting_hr), 2),
    min_hr        = min(resting_hr),
    max_hr        = max(resting_hr)
  )
```

---

## Results

| mean_exercise | mean_hr | min_hr | max_hr |
|---------------|---------|--------|--------|
| 45.13         | 74.29   | 50.2   | 93.1   |

---

## Conclusion

The average resting HR in this dataset is ~74 bpm, somewhat higher than a typical rested adult. A basic summary is not sufficient to assess direction — further analysis is needed.

