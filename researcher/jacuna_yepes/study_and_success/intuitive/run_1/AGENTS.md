---
title: "Project Memory"
author: "jose acuna"
date: "2026-04-22"
---

# Project Memory

## Research Question

Are Engineering students who study more hours per week more likely to pass their Calculus course?

---

## Context

200 first-semester Engineering students. Weekly study hours and course pass/fail recorded.

---

## Methodology

```r
library(readr)
library(dplyr)

df <- read_csv("data.csv")

df |> count(passed)
```

---

## Results

| passed |   n |
|--------|-----|
| no     | 101 |
| yes    |  99 |

---

## Conclusion

The overall pass rate is nearly 50/50. A simple count does not reveal the direction of the relationship with study hours — further analysis is needed.

