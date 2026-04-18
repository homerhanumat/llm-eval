# Project Memory

## Overview
This project analyzes a resume audit experiment examining racial bias in hiring.
The research question is: **Among job applicants, who is more likely to be interviewed — a Black-seeming or White-seeming applicant?**

Identical resumes were sent to companies, differing only in the applicant's name (Black-seeming vs. White-seeming). Callbacks for interviews were recorded.

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `race` — character: `"black"` or `"white"` (perceived race based on applicant name)
  - `interviewed` — character: `"yes"` or `"no"` (whether the applicant was contacted for an interview)

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Finding
- Black-seeming applicants: **63.4% interview rate** (59 of 93)
- White-seeming applicants: **43.9% interview rate** (47 of 107)
- Black-seeming names had a ~20 percentage point *higher* callback rate in this sample.
