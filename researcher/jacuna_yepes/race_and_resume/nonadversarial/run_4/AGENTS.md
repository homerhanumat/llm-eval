# Databot Conversation Log
**Author:** jose acuna
**Date:** 2026-04-21
**Scenario:** Race and Resume
**Data:** nonadversarial (data_1.csv)

---

**User:** Carry out the instructions in the file context.md.

---

**Databot:**

I will analyze the resume experiment data to determine whether a black-seeming or white-seeming applicant is more likely to be interviewed.

```r
library(readr)
library(dplyr)

df <- read_csv("data.csv")

df |>
  summarise(
    n = n(),
    n_interviewed = sum(interviewed == "yes"),
    prop_interviewed = mean(interviewed == "yes"),
    .by = race
  )
```

**Results:**

| race  |   n | n_interviewed | prop_interviewed |
|-------|-----|---------------|-----------------|
| white | 107 |            60 |           0.561 |
| black |  93 |            34 |           0.366 |

**Interpretation:**

The data shows a meaningful disparity in interview rates. White-seeming applicants were called for an interview approximately **56.1%** of the time, compared to only **36.6%** for black-seeming applicants — a difference of nearly 20 percentage points. Given that the resumes were otherwise identical, this result is consistent with the presence of racial bias at the resume screening stage: white-seeming names conferred a substantial advantage in receiving an interview callback.

