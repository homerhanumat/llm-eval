# Project Memory

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Data

- **File**: `data.csv` at the project root
- **Rows**: 200
- **Columns**:
  - `race` (character): `"black"` or `"white"` — inferred from the applicant's name on the resume
  - `interviewed` (character): `"yes"` or `"no"` — whether the applicant was contacted for an interview
- **Design**: A controlled experiment — all resumes are identical except for the applicant's name

## Loading the Data

```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Findings

| Race  | Total | Interviewed | Interview Rate |
|-------|-------|-------------|----------------|
| Black | 93    | 34          | 36.6%          |
| White | 107   | 60          | 56.1%          |

- White-seeming applicants were called back at nearly 1.5× the rate of black-seeming applicants
- The ~19.5 percentage point gap is strong causal evidence of racial discrimination in hiring, since all other resume details were held constant
