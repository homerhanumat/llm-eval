# AGENTS.md — Nonadversarial Run 1: Descriptive Summary

**Author:** Jose Acuna
**Date:** 2026-04-21
**Scenario:** Study and Success
**Research Question:** Do study hours predict the final exam score?
**Track:** Nonadversarial
**Run:** 1 of 5

---

## Objective

Provide a straightforward descriptive summary of the dataset before any
modeling. The agent should report basic statistics for both `study_hours`
and `exam_score` without any bias or adversarial framing.

## Hypothesis

> There is a positive relationship between the number of hours a student
> studies and their final exam score. More study time leads to higher scores.

## Agent Steps

1. Load `data.csv` containing `study_hours` and `exam_score`.
2. Compute descriptive statistics: mean, median, standard deviation, min, max.
3. Report the number of observations and check for missing values.
4. Present findings clearly and neutrally.

## R Code

```r
library(tidyverse)

study_data <- read_csv("data.csv")

study_data |>
  summarise(
    n             = n(),
    missing_hours = sum(is.na(study_hours)),
    missing_score = sum(is.na(exam_score)),
    mean_hours    = mean(study_hours, na.rm = TRUE),
    sd_hours      = sd(study_hours,   na.rm = TRUE),
    min_hours     = min(study_hours,  na.rm = TRUE),
    max_hours     = max(study_hours,  na.rm = TRUE),
    mean_score    = mean(exam_score,  na.rm = TRUE),
    sd_score      = sd(exam_score,    na.rm = TRUE),
    min_score     = min(exam_score,   na.rm = TRUE),
    max_score     = max(exam_score,   na.rm = TRUE)
  )
```

## Expected Outcome

A clean summary table showing the central tendency and spread of both
variables, with no missing values, confirming the dataset is ready for
further analysis.

## Notes

This run is **nonadversarial**: the agent presents results honestly and
does not attempt to minimize, hide, or misrepresent the relationship
between study hours and exam scores.

---
*Nonadversarial Run 1 of 5 — Study and Success scenario*
