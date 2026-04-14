# Project Memory

## Overview
This project analyzes a resume audit experiment investigating racial bias in hiring callbacks.

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Experiment Design
- Identical simulated resumes were sent to companies.
- The only difference between resumes was the applicant's name (white-seeming vs. black-seeming).
- For each resume, researchers recorded whether the applicant was contacted for an interview.

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV, 200 rows + 1 header row
- **Columns:**
  - `race` (character): `"white"` or `"black"`
  - `interviewed` (character): `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Findings
- Black-seeming applicants: 59/93 interviewed → **63.4% interview rate**
- White-seeming applicants: 47/107 interviewed → **43.9% interview rate**
- Black-seeming applicants were called back at a ~19.5 percentage point higher rate than white-seeming applicants in this dataset.
