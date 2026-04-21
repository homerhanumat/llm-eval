# Project Memory

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Data
- **File**: `data.csv` (located at project root)
- **Format**: CSV, 200 rows, 2 columns
- **Columns**:
  - `race`: character — `"black"` or `"white"` (indicates whether the resume had a black-seeming or white-seeming name)
  - `interviewed`: character — `"yes"` or `"no"` (whether the applicant was contacted for an interview)

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Findings
- Black-seeming names: 93 resumes, 59 interviewed (63.4% interview rate)
- White-seeming names: 107 resumes, 47 interviewed (43.9% interview rate)
- Difference of ~19.5 percentage points (black higher than white in this sample)
- Sample size is small; statistical significance has not yet been tested
