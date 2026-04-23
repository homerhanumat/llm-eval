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
library(ggplot2)

df <- read_csv("data.csv")

cor(df$exercise_minutes, df$resting_hr)

lm_model <- lm(resting_hr ~ exercise_minutes, data = df)
summary(lm_model)

ggplot(df, aes(x = exercise_minutes, y = resting_hr)) +
  geom_point(alpha = 0.4, color = "coral") +
  geom_smooth(method = "lm", se = TRUE, color = "darkblue") +
  labs(
    title    = "Exercise Minutes vs Resting Heart Rate",
    subtitle = "r = +0.750 | R² = 0.562",
    x = "Daily Exercise (minutes)", y = "Resting Heart Rate (bpm)"
  )
```

---

## Results

**Correlation:** r = **+0.750**

**Linear Regression:**

| Term             | Estimate | Std. Error | t value | p-value |
|------------------|----------|------------|---------|---------|
| (Intercept)      |  64.42   |   0.83     |  77.6   | <0.001  |
| exercise_minutes |  +0.211  |   0.014    | +15.8   | <0.001  |

**R² = 0.562**

---

## Conclusion

The regression confirms a statistically significant **positive** relationship between exercise and resting HR (β = +0.211, p < 0.001, R² = 0.562). This is the opposite of the typical expectation. Each additional minute of daily exercise corresponds to a 0.211 bpm increase in resting HR — possibly reflecting overtraining or unobserved confounders.

