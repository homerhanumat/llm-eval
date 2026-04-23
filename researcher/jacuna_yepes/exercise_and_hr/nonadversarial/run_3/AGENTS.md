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

# Correlation
cor(df$exercise_minutes, df$resting_hr)

# Group summary
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

# ANOVA
aov_result <- aov(resting_hr ~ exercise_group, data = df |>
  mutate(exercise_group = cut(exercise_minutes,
                              breaks = c(0, 30, 60, 90),
                              labels = c("Low","Moderate","High"))))
summary(aov_result)
```

---

## Results

**Correlation:** r = **-0.765**

| exercise_group |   n | mean_hr |  sd_hr |
|----------------|-----|---------|--------|
| Low            |  64 |   69.43 |   4.82 |
| Moderate       |  73 |   63.42 |   5.01 |
| High           |  63 |   56.98 |   5.23 |

**ANOVA:** F(2, 197) = 148.3, p < 0.001

---

## Conclusion

The correlation of r = -0.765 indicates a strong negative relationship between exercise and resting heart rate. The ANOVA confirms that the mean HR differences across exercise groups are statistically significant (p < 0.001). More exercise is clearly associated with lower resting HR.

