# Project Memory

## Overview
This project analyzes a resume audit experiment examining racial bias in job interview callbacks.

## Research Question
Among job applicants, who is more likely to be interviewed: a Black-seeming or White-seeming applicant?

## Experimental Design
- Simulated resumes were sent to companies.
- All resumes were identical except for the applicant's name.
- Names were chosen to suggest either a Black or White applicant.
- Outcome recorded: whether the applicant was contacted for an interview (yes/no).

## Data File
- **File:** `data.csv` (located at project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `race` (character): `"black"` or `"white"`
  - `interviewed` (character): `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Finding
In this dataset, Black-seeming applicants were interviewed at a **higher** rate (63.4%) than White-seeming applicants (43.9%) — a difference of ~19.5 percentage points.
