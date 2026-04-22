# Project Memory

## Dataset

- **File**: `data.csv`
- **Format**: CSV, 200 rows, 2 columns
- **Description**: 200 Engineering students at a large university in South America, tracked through a first-semester Calculus course.

## Schema

| Column | Type | Description |
|--------|------|-------------|
| `hours_per_week` | numeric | Average hours per week studied outside of class |
| `passed` | character | Whether the student passed the course (`"yes"` or `"no"`) |

## Research Question

Are students who study more hours per week more likely to pass the Calculus course?

## Loading the Data

```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Finding

Counterintuitively, students who **failed** studied more hours on average (~10.7 hrs/week) than students who **passed** (~5.1 hrs/week). This is likely due to reverse causality — struggling students increased their study time in response to difficulties.
