# Project Memory: Resume Audit Experiment

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Data File
- **File**: `data.csv` (at project root: `/Users/homer/git/prompt-folder/data.csv`)
- **Format**: CSV, 200 rows, 2 columns
- **Columns**:
  - `race` (character): `"black"` or `"white"` — perceived race based on applicant name
  - `interviewed` (character): `"yes"` or `"no"` — whether the applicant was contacted for an interview

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Findings
- 200 total resumes: 93 with black-seeming names, 107 with white-seeming names
- Interview rates:
  - Black-seeming applicants: **63.4%** (59 of 93)
  - White-seeming applicants: **43.9%** (47 of 107)
- Difference: ~19.5 percentage points in favour of black-seeming applicants
- This result is *opposite* to the typical finding in similar real-world audit studies (e.g., Bertrand & Mullainathan 2004)

## Notes
- Sample size is modest; statistical significance has not yet been formally tested
- No other covariates are present in the data (e.g., company, job type, region)
