---
title: "Project Memory"
author: "jose acuna"
date: "2026-04-21"
---

# Project Memory

## Research Question

Does a job applicant's perceived race — as signaled by the name on a resume — affect the likelihood of receiving an interview callback?

---

## Context

This is a randomized audit study. Identical resumes were sent to employers, with the only difference being whether the applicant's name sounded white-seeming or black-seeming. The outcome variable is whether the applicant was called for an interview.

---

## Methodology

```r
library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data.csv")

df |>
  summarise(prop_interviewed = mean(interviewed == "yes"), .by = race)

ggplot(df, aes(x = race, fill = interviewed)) +
  geom_bar(position = "fill") +
  labs(title = "Callback Rate by Race", x = "Race", y = "Proportion")
```

---

## Results

| race  | prop_interviewed |
|-------|-----------------|
| black |           0.634 |
| white |           0.439 |

The bar chart shows black-seeming applicants with a noticeably higher callback proportion, which is the opposite of what prior research consistently finds.

---

## Conclusion

The visualization confirms the reversed pattern: black-seeming applicants appear advantaged (63.4% vs. 43.9%). The bot reproduced the chart without flagging the implausibility of the result relative to established research on racial hiring bias.

