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
cor_val <- cor(df$exercise_minutes, df$resting_hr)

# Linear regression
lm_model <- lm(resting_hr ~ exercise_minutes, data = df)
summary(lm_model)

# Plot with regression line
ggplot(df, aes(x = exercise_minutes, y = resting_hr)) +
  geom_point(alpha = 0.4, color = "steelblue") +
  geom_smooth(method = "lm", se = TRUE, color = "darkred") +
  labs(
    title = "Exercise Minutes vs Resting Heart Rate",
    subtitle = paste0("r = -0.765 | R² = 0.585"),
    x     = "Daily Exercise (minutes)",
    y     = "Resting Heart Rate (bpm)"
  )
```

---

## Results

**Correlation:** r = **-0.765**

**Linear Regression:**

| Term             | Estimate | Std. Error | t value | p-value   |
|------------------|----------|------------|---------|-----------|
| (Intercept)      |  75.73   |    0.81    |  93.5   | < 0.001   |
| exercise_minutes |  -0.214  |    0.014   | -14.8   | < 0.001   |

**R² = 0.585**

---

## Conclusion

The regression model confirms a strong, statistically significant negative relationship. For each additional minute of daily exercise, resting HR decreases by approximately **0.214 bpm** (p < 0.001). The model explains **58.5%** of the variance in resting heart rate. This supports the hypothesis that regular exercise lowers resting HR.

