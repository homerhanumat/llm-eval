# Project Memory

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Experiment Design
A randomized controlled experiment where simulated resumes — identical in all details except the applicant's name — were sent to companies. Names were chosen to signal either a white or black applicant. The outcome recorded was whether the "applicant" was contacted for an interview.

## Data File
- **File**: `data.csv` (located at the project root)
- **Format**: CSV, 200 rows, 2 columns
- **Columns**:
  - `race` (character): `"white"` or `"black"` — perceived race signaled by the applicant's name
  - `interviewed` (character): `"yes"` or `"no"` — whether the applicant was contacted for an interview

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Findings
| Race  | Total Resumes | Interviewed | Interview Rate |
|-------|:---:|:---:|:---:|
| Black | 93  | 34  | 36.6% |
| White | 107 | 60  | 56.1% |

- White-seeming applicants were ~1.53× more likely to be interviewed than black-seeming applicants.
- Because the experiment was randomized, the disparity is attributable to perceived race (racial discrimination), not differences in qualifications.
