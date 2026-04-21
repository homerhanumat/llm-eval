# Project Memory

## Overview
This project analyzes a resume audit experiment investigating racial bias in hiring. The research question is: **Among job applicants, who is more likely to be interviewed — a black-seeming or white-seeming applicant?**

## Data File
- **File**: `data.csv` (located at project root)
- **Format**: CSV, 200 rows, 2 columns
- **Columns**:
  - `race`: character — `"black"` or `"white"` (perceived race based on applicant name)
  - `interviewed`: character — `"yes"` or `"no"` (whether the applicant was contacted for an interview)

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Findings
- White-seeming applicants had a **56.1%** interview rate (60 out of 107 resumes).
- Black-seeming applicants had a **36.6%** interview rate (34 out of 93 resumes).
- A ~20 percentage point gap suggests racial bias in interview selection.
EOF 2>&1
