# Project Memory

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Experiment Design
- Simulated resumes sent to companies; all details identical except applicant name
- Names chosen to suggest either a white or black applicant
- Outcome recorded: whether the "applicant" was contacted for an interview

## Data File
- **File:** `data_2.csv` (note: context.md refers to `data.csv`, but the actual file is `data_2.csv`)
- **Location:** Root of the project (`C:/Users/fire2468/prompt-folder/data_2.csv`)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `race` (character): `"white"` or `"black"`
  - `interviewed` (character): `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("C:/Users/fire2468/prompt-folder/data_2.csv")
```

## Key Findings
- **Black-seeming names:** 63.4% interview rate (59/93 resumes)
- **White-seeming names:** 43.9% interview rate (47/107 resumes)
- Black-seeming names received callbacks ~19.5 percentage points more often
- Result is opposite to many real-world audit studies; statistical significance not yet tested
