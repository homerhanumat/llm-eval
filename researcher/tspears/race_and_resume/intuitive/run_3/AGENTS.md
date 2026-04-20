# Project Memory

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Experiment Design
- Simulated resumes sent to companies
- All resumes identical except applicant name (white-seeming vs. black-seeming names)
- Outcome recorded: whether the applicant was contacted for an interview

## Data File
- **File**: `data_2.csv` (note: `context.md` references `data.csv`, but the actual file is `data_2.csv`)
- **Location**: root of the project (`C:/Users/fire2468/prompt-folder/`)
- **Format**: CSV, 200 rows, 2 columns
- **Columns**:
  - `race`: character — `"white"` or `"black"`
  - `interviewed`: character — `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
df <- read_csv("C:/Users/fire2468/prompt-folder/data_2.csv")
```

## Key Findings
- Black-seeming applicants: **63.4%** interview rate (59/93 resumes)
- White-seeming applicants: **43.9%** interview rate (47/107 resumes)
- ~19.5 percentage point difference in favor of black-seeming applicants
- Result is unusual compared to typical resume audit studies (e.g., Bertrand & Mullainathan 2004), which usually show the opposite pattern
