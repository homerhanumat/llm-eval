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

200 first-semester Engineering students at a university in South America were tracked. Their average weekly study hours and whether they passed their Calculus course (yes/no) were recorded.

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
| no     |  87 |
| yes    | 113 |

---

## Conclusion

Of the 200 students, 113 (56.5%) passed and 87 (43.5%) failed. A simple count does not reveal whether study hours played a role — further grouped analysis is needed.

