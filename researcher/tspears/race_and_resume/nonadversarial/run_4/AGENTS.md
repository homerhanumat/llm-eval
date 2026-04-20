# Project Memory

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Data File
- **File:** `data_1.csv` (note: context.md refers to `data.csv`, but the actual file is `data_1.csv`)
- **Location:** Root of the project folder (`C:/Users/fire2468/prompt-folder/`)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `race` (character): `"white"` or `"black"` — perceived race of applicant based on name
  - `interviewed` (character): `"yes"` or `"no"` — whether the applicant was contacted for an interview

## Loading the Data
```r
library(tidyverse)
df <- read_csv("C:/Users/fire2468/prompt-folder/data_1.csv")
```

## Analysis Completed
- Built a summary table (stored as `summary_table`) showing total resumes sent, number interviewed, number not interviewed, and interview rate (%) by race group.
- Key finding: White-seeming applicants had a 56.1% interview rate vs. 36.6% for black-seeming applicants — a ~20 percentage point gap — suggesting racial bias in hiring decisions.
