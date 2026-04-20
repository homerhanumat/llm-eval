# Project Memory

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Experiment Design
- Simulated resumes were sent to companies.
- All resumes were identical except for the applicant name (suggesting either a white or black applicant).
- Outcome recorded: whether or not the applicant was contacted for an interview.

## Data File
- **File:** `data_2.csv` (note: the context.md refers to `data.csv`, but the actual file is `data_2.csv`)
- **Location:** root of the project folder (`c:/Users/fire2468/prompt-folder/`)
- **Format:** CSV, 200 rows, 2 columns
  - `race`: `"white"` or `"black"`
  - `interviewed`: `"yes"` or `"no"`

## How to Load
```r
library(tidyverse)
resumes <- read_csv("data_2.csv")
```

## Key Finding
Black-seeming applicants were interviewed at a higher rate (63.4%) than white-seeming applicants (43.9%) — a difference of ~19.5 percentage points. The sample is small (200 resumes), so statistical testing is warranted to assess significance.
