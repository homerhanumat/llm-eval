# Project Memory

## Overview
This project analyzes a resume audit experiment examining racial discrimination in hiring.

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Experiment Design
- Simulated resumes were sent to companies.
- All resumes were identical except for the applicant's name.
- Names were chosen to suggest either a **white** or **black** applicant.
- Outcome recorded: whether the applicant was contacted for an interview.

## Data File
- **File:** `data.csv` (located at project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `race`: character — `"white"` or `"black"` (implied race based on applicant name)
  - `interviewed`: character — `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Finding
White-seeming applicants had a **56.1%** interview rate vs. **36.6%** for black-seeming applicants (~20 percentage point gap), consistent with racial discrimination in hiring.

## Analysis Approach
- Use `tidyverse` (`readr` to load, `dplyr` to summarise).
- Group by `race`, compute counts and `mean(interviewed == "yes")` for interview rate.
