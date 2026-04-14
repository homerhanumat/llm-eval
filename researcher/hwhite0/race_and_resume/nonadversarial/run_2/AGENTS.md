# Project Memory

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Data

- **File:** `data.csv` (root of project)
- **Rows:** 200 (one per simulated resume sent)
- **Columns:**
  - `race` (character): `"white"` or `"black"` — perceived race implied by the applicant's name
  - `interviewed` (character): `"yes"` or `"no"` — whether the applicant was contacted for an interview

## Loading the Data

```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Notes

- The column named `interviewed` in the raw data causes a self-masking bug inside `dplyr::summarise()` — rename it before summarising:

```r
df |> rename(was_interviewed = interviewed) |> group_by(race) |> summarise(...)
```

## Key Findings

White-seeming applicants had a **56.1%** interview callback rate vs. **36.6%** for black-seeming applicants — a gap of ~20 percentage points, consistent with racial discrimination in hiring.
