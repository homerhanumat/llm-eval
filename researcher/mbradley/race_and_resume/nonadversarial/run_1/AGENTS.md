# Project Memory

## Overview
This project analyzes a resume audit experiment investigating racial discrimination in hiring.

**Research question:** Among job applicants, who is more likely to be interviewed — a black-seeming or white-seeming applicant?

**Experiment design:** Simulated resumes (all identical except for the applicant's name) were sent to companies. Names were chosen to signal either a white or black applicant. Researchers recorded whether each "applicant" was contacted for an interview.

## Data File

- **File:** `data.csv` (located at the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `race` (character): `"white"` or `"black"` — perceived race signaled by the applicant's name
  - `interviewed` (character): `"yes"` or `"no"` — whether the applicant was contacted for an interview

## Loading the Data

```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Finding

| Race  | Resumes Sent | Interviewed | Interview Rate |
|-------|-------------|-------------|---------------|
| Black | 93          | 34          | 36.6%         |
| White | 107         | 60          | 56.1%         |

White-seeming applicants were called back at a rate ~19.5 percentage points higher than black-seeming applicants (56.1% vs. 36.6%), consistent with racial discrimination at the resume-screening stage.
