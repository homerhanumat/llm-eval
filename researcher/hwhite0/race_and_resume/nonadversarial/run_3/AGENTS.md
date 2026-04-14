# Project Memory

## Overview
This project analyzes a resume audit experiment examining racial disparities in job interview callbacks.

## Research Question
Among job applicants, who is more likely to be contacted for an interview: a black-seeming or white-seeming applicant?

## Experimental Design
- Simulated resumes were sent to companies; all resumes were identical except for the applicant's name.
- Names were chosen to signal either a white or black applicant.
- Outcome recorded: whether the "applicant" was contacted for an interview.

## Data File
- **File**: `data.csv` (located at project root)
- **Format**: CSV, 200 rows + header, 2 columns
- **Columns**:
  - `race` (character): `"white"` or `"black"`
  - `interviewed` (character): `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Finding
| Race  | Total Resumes | # Interviewed | % Interviewed |
|-------|:---:|:---:|:---:|
| Black | 93  | 34  | 36.6% |
| White | 107 | 60  | 56.1% |

White-seeming applicants were interviewed at a rate ~20 percentage points higher than black-seeming applicants.
