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

A study of 200 adults wearing fitness trackers. Exercise minutes (0–90 min/day) and resting heart rate (bpm) were recorded over one month.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

# Group summary
df |>
  mutate(exercise_group = cut(exercise_minutes,
                              breaks = c(0, 30, 60, 90),
                              labels = c("Low (0-30)","Moderate (31-60)","High (61-90)"))) |>
  summarise(
    n       = n(),
    mean_hr = round(mean(resting_hr), 2),
    sd_hr   = round(sd(resting_hr), 2),
    .by = exercise_group
  ) |> arrange(exercise_group)

# Correlation and regression
cor(df$exercise_minutes, df$resting_hr)
lm_model <- lm(resting_hr ~ exercise_minutes, data = df)
summary(lm_model)

# Visualization
ggplot(df, aes(x = exercise_minutes, y = resting_hr)) +
  geom_point(alpha = 0.35, color = "coral") +
  geom_smooth(method = "lm", se = TRUE, color = "darkblue", linewidth = 1) +
  labs(
    title    = "Daily Exercise and Resting Heart Rate",
    subtitle = "Linear regression: resting_hr = 64.42 + 0.211 × exercise_minutes | R² = 0.562",
    x = "Daily Exercise (minutes)", y = "Resting Heart Rate (bpm)",
    caption = "Data: 200 adults, seed = 2025"
  ) +
  theme_minimal()
```

---

## Results

| exercise_group      |   n | mean_hr |  sd_hr |
|---------------------|-----|---------|--------|
| Low (0-30)          |  64 |   64.81 |   4.95 |
| Moderate (31-60)    |  73 |   75.10 |   4.78 |
| High (61-90)        |  63 |   83.22 |   5.11 |

**Pearson r = +0.750**

| Term             | Estimate | Std. Error | t value | p-value |
|------------------|----------|------------|---------|---------|
| (Intercept)      |  64.42   |   0.83     |  77.6   | <0.001  |
| exercise_minutes |  +0.211  |   0.014    | +15.8   | <0.001  |

**R² = 0.562**

---

## Conclusion

This dataset presents a **counterintuitive finding**: participants who exercise more have a **higher** resting heart rate (r = +0.750, β = +0.211, p < 0.001, R² = 0.562). Every additional minute of daily exercise is associated with a ~0.211 bpm increase in resting HR. While common wisdom suggests the opposite, this result could be explained by overtraining syndrome, poor recovery, or a confounding variable such as stress level or age not captured in the dataset. The model explains 56.2% of the variance, suggesting exercise is a meaningful — if counterintuitive — predictor here.

