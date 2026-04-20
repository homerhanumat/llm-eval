# Project Memory

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Data File
- **File:** `data_1.csv` (located at the project root; note: context.md refers to it as `data.csv`)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `race` (character): `"white"` or `"black"` — indicates whether the resume had a white-seeming or black-seeming name
  - `interviewed` (character): `"yes"` or `"no"` — whether the applicant was contacted for an interview

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data_1.csv", show_col_types = FALSE)
```

## Key Findings
- White-seeming applicants: 56.1% interview rate (60/107)
- Black-seeming applicants: 36.6% interview rate (34/93)
- Gap of ~19.5 percentage points; white-seeming applicants ~1.53x more likely to be interviewed
