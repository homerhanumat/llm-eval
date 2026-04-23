Let me start by reading the `context.md` file to understand the instructions.

Retrieved file contents

context.mdNow let me check that the data file exists:

Constructed project tree

Here's the plan and code to address the research question:

1. Read `data.csv`
2. Compute summary statistics for both variables
3. Compute the Pearson correlation coefficient
4. Fit a simple linear regression (`resting_hr ~ exercise_minutes`) and extract the slope

```r
library(dplyr)

# Read data
df <- read.csv("data.csv")

# Numerical summaries
summary_stats <- df |>
  summarise(
    n                  = n(),
    mean_exercise_min  = mean(exercise_minutes, na.rm = TRUE),
    sd_exercise_min    = sd(exercise_minutes,   na.rm = TRUE),
    mean_resting_hr    = mean(resting_hr,        na.rm = TRUE),
    sd_resting_hr      = sd(resting_hr,          na.rm = TRUE)
  )

# Correlation
r <- cor(df$exercise_minutes, df$resting_hr, use = "complete.obs")

# Simple linear regression
fit   <- lm(resting_hr ~ exercise_minutes, data = df)
slope <- coef(fit)[["exercise_minutes"]]

# Collect key results
list(
  summary        = summary_stats,
  correlation_r  = round(r,     4),
  slope          = round(slope, 4),
  interpretation = if (slope < 0)
    "The relationship is negative: adults who exercise more minutes per day tend to have lower resting heart rates, suggesting that greater daily physical activity is associated with better cardiovascular efficiency."
  else
    "The relationship is positive: adults who exercise more minutes per day tend to have higher resting heart rates, which would be an unexpected finding warranting further investigation."
)
```

**What this code does:**

- `summary_stats` — sample size, means, and SDs for both variables.
- `r` — Pearson correlation; its sign and magnitude indicate the direction and strength of the linear association.
- `slope` — the regression coefficient for `exercise_minutes`; its value tells you how many bpm resting heart rate changes, on average, for each additional minute of daily exercise.
- The `interpretation` string is chosen programmatically based on the sign of the slope, so it will be accurate regardless of what the data show.