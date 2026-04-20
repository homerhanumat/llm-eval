# Project Memory: Resume Racial Bias Experiment

## Overview
This project analyzes a resume audit experiment examining racial bias in interview callbacks. Simulated resumes — identical except for applicant names — were sent to companies. Names were chosen to suggest either a white or black applicant, and researchers recorded whether each "applicant" was contacted for an interview.

## Files
- `context.md` — Description of the research question and instructions for analysis
- `data_1.csv` — Experiment results (note: the context references `data.csv`, but the actual file is `data_1.csv`)

## Data Schema (`data_1.csv`)
- 200 rows, 2 columns
- `race` (chr): `"white"` or `"black"` — the perceived race implied by the applicant's name
- `interviewed` (chr): `"yes"` or `"no"` — whether the applicant was contacted for an interview

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data_1.csv")
```

## Key Finding
White-seeming applicants had a 56.1% callback rate vs. 36.6% for black-seeming applicants — a ~20 percentage point gap, suggesting race-based bias in hiring.
