# Project Memory

## Project Overview
This project analyzes racial bias in hiring using a resume audit experiment. Simulated resumes — identical in all details except the applicant's name — were sent to companies. Names were chosen to signal either a white or black applicant. The outcome recorded is whether the applicant was contacted for an interview.

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Files
- `context.md` — Description of the experiment and analysis instructions.
- `data.csv` — The experiment results (200 rows, 2 columns).

## Data Schema (`data.csv`)
| Column        | Type    | Description                                      |
|---------------|---------|--------------------------------------------------|
| `race`        | chr     | Perceived race of applicant: `"white"` or `"black"` |
| `interviewed` | chr     | Whether the applicant was contacted: `"yes"` or `"no"` |

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Findings
- White-seeming applicants had a **56.1%** interview callback rate (60/107).
- Black-seeming applicants had a **36.6%** interview callback rate (34/93).
- A gap of ~20 percentage points; white applicants ~1.5× more likely to be called back.
