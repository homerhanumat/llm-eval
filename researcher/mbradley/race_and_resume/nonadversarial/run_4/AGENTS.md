# Project Memory: Resume Audit Experiment

## Overview
This project analyzes a resume audit experiment investigating racial bias in job interview callbacks.

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Experimental Design
- Identical simulated resumes were sent to companies, differing **only** in the applicant's name.
- Names were chosen to suggest either a white or black applicant.
- Outcome recorded: whether the "applicant" was contacted for an interview.

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `race` (character): `"white"` or `"black"`
  - `interviewed` (character): `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Finding
- White-seeming applicants: **56.1%** interview rate (60/107)
- Black-seeming applicants: **36.6%** interview rate (34/93)
- ~20 percentage point gap; white-seeming applicants ~1.5× more likely to be contacted
- Because names were randomly assigned, the disparity is attributable to perceived race (racial discrimination)
