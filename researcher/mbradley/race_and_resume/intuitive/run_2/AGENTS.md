# Project Memory

## Overview
This project examines racial bias in hiring by analyzing a resume experiment. Simulated resumes — identical in all details except the applicant's name — were sent to companies. Names were chosen to signal either a White or Black applicant. Whether the applicant was contacted for an interview was recorded.

## Files
- `context.md` — Description of the research question and experiment design.
- `data.csv` — Experiment results (200 rows, 2 columns).

## Data Schema (`data.csv`)
| Column       | Type      | Description                                      |
|--------------|-----------|--------------------------------------------------|
| `race`       | character | Perceived race of applicant: `"white"` or `"black"` |
| `interviewed`| character | Whether contacted for interview: `"yes"` or `"no"` |

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Findings
- 107 White-seeming resumes; 93 Black-seeming resumes (200 total).
- Interview rate for White-seeming applicants: **43.9%**
- Interview rate for Black-seeming applicants: **63.4%**
- Black-seeming applicants were called back at a ~19.5 percentage point higher rate in this sample.
