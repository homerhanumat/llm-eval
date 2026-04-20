# Project Memory

## Overview
This project analyzes racial bias in hiring using a controlled resume experiment.

**Research question:** Among job applicants, who is more likely to be interviewed — a black-seeming or white-seeming applicant?

## Data File
- **File:** `data_1.csv` (note: `context.md` references `data.csv`, but the actual file is `data_1.csv`)
- **Location:** Root of the project folder (`C:/Users/fire2468/prompt-folder/`)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `race`: character — `"white"` or `"black"` (perceived race based on applicant name)
  - `interviewed`: character — `"yes"` or `"no"` (whether the applicant was contacted for an interview)

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("C:/Users/fire2468/prompt-folder/data_1.csv")
```

## Key Findings
- White-seeming applicants: **56.1%** callback rate (60/107)
- Black-seeming applicants: **36.6%** callback rate (34/93)
- Gap of ~19.5 percentage points; white applicants ~1.5× more likely to be called back
- Since this is a controlled experiment (identical resumes, only name differs), the difference is attributable to perceived race
