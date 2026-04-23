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

# Summary statistics by exercise group
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

# Pearson correlation
cor(df$exercise_minutes, df$resting_hr)

# Linear regression
lm_model <- lm(resting_hr ~ exercise_minutes, data = df)
summary(lm_model)

# Visualization
ggplot(df, aes(x = exercise_minutes, y = resting_hr)) +
  geom_point(alpha = 0.35, color = "steelblue") +
  geom_smooth(method = "lm", se = TRUE, color = "firebrick", linewidth = 1) +
  labs(
    title    = "Daily Exercise and Resting Heart Rate",
    subtitle = "Linear regression: resting_hr = 75.73 − 0.214 × exercise_minutes | R² = 0.585",
    x        = "Daily Exercise (minutes)",
    y        = "Resting Heart Rate (bpm)",
    caption  = "Data: 200 adults, seed = 2025"
  ) +
  theme_minimal()
```

---

## Results

| exercise_group      |   n | mean_hr |  sd_hr |
|---------------------|-----|---------|--------|
| Low (0-30)          |  64 |   69.43 |   4.82 |
| Moderate (31-60)    |  73 |   63.42 |   5.01 |
| High (61-90)        |  63 |   56.98 |   5.23 |

**Pearson r = -0.765** (strong negative correlation)

**Linear Regression:**

| Term             | Estimate | Std. Error | t value | p-value |
|------------------|----------|------------|---------|---------|
| (Intercept)      |  75.73   |   0.81     |  93.5   | <0.001  |
| exercise_minutes | -0.214   |   0.014    | -14.8   | <0.001  |

**R² = 0.585** — the model explains 58.5% of variance in resting HR.

---

## Conclusion

The evidence consistently supports a **negative relationship** between daily exercise and resting heart rate. The Pearson correlation (r = -0.765) and the linear regression (β = -0.214, p < 0.001) both indicate that each additional minute of daily exercise is associated with a ~0.214 bpm reduction in resting HR. The group comparison reinforces this: high-exercise participants had a mean HR roughly 12 bpm lower than low-exercise participants. With R² = 0.585, the model accounts for a substantial proportion of variability, making exercise a strong predictor of resting heart rate. This aligns with well-established physiological evidence that aerobic training improves cardiac efficiency.

