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

A study of 200 adults wearing fitness trackers (Whoop or Apple Watch). Each person's average daily minutes of moderate-to-vigorous exercise and average resting heart rate (bpm) at the end of the month were recorded.

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
| 45.13         | 65.76   | 47.1   | 86.9   |

---

## Conclusion

On average, participants exercised about 45 minutes per day and had a resting heart rate of around 66 bpm. The range of resting HR was 47–87 bpm, suggesting meaningful variation in the sample. A more formal analysis is needed to assess direction of the relationship.

