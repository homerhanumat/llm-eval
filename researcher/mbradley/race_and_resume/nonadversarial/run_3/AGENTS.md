# Project Memory

## Project Description
A resume audit experiment examining racial bias in hiring. Simulated resumes — identical except for applicant names suggesting either a white or Black applicant — were sent to companies. The outcome recorded is whether the applicant was contacted for an interview.

## Files
- `context.md` — Description of the research question and instructions for the analysis.
- `data.csv` — Results of the experiment (200 rows, 2 columns).

## Data Schema (`data.csv`)
| Column       | Type    | Description                                              |
|--------------|---------|----------------------------------------------------------|
| `race`       | character | Perceived race of applicant: `"white"` or `"black"`  |
| `interviewed`| character | Whether the applicant was contacted: `"yes"` or `"no"` |

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv")
```

## Key Finding
White-seeming applicants had a **56.1%** interview callback rate vs. **36.6%** for Black-seeming applicants — a gap of ~20 percentage points — providing strong evidence of racial discrimination in hiring.
