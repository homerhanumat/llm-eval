# Project Memory: Resume Audit Study

## Research Question
Among job applicants, who is more likely to be interviewed: a Black-seeming or White-seeming applicant?

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `race` (character): `"black"` or `"white"` — perceived race implied by the applicant's name
  - `interviewed` (character): `"yes"` or `"no"` — whether contacted for an interview

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Study Design
- Simulated resumes sent to companies; all identical except for the applicant's name.
- Names chosen to suggest either a Black or White applicant.
- Researchers recorded whether each "applicant" was contacted for an interview.

## Key Findings (as of 2026-04-21)
- 93 Black-seeming resumes, 107 White-seeming resumes
- Interview rate for Black-seeming names: **63.4%** (59/93)
- Interview rate for White-seeming names: **43.9%** (47/107)
- Black-seeming applicants were interviewed at a ~19.5 percentage point higher rate — a counterintuitive result
- Sample size is small (n=200); statistical significance has not yet been tested
