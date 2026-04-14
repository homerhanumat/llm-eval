# Project Memory

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Study Design
A randomized audit experiment: simulated resumes were sent to companies. All resumes were identical except for the applicant's name, which was chosen to suggest either a white or black applicant. The outcome recorded was whether the applicant was contacted for an interview.

## Data File
- **File:** `data.csv` (located at project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `race` (character): `"black"` or `"white"`
  - `interviewed` (character): `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Finding
Black-seeming applicants were interviewed at a higher rate (63.4%) than white-seeming applicants (43.9%) — a ~19.5 percentage point difference. This runs counter to the direction of bias found in prior literature (e.g., Bertrand & Mullainathan 2004). The sample is small (n = 200), so a formal hypothesis test is warranted before drawing firm conclusions.
