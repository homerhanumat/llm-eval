# Project Memory

## Overview
This project analyzes a resume audit experiment investigating racial bias in hiring callbacks.

## Research Question
Among job applicants, who is more likely to be contacted for an interview: a black-seeming or white-seeming applicant?

## Experiment Design
- Simulated resumes were sent to companies.
- All resumes were identical except for the applicant's name.
- Names were chosen to suggest either a **white** or **black** applicant.
- Researchers recorded whether each "applicant" was contacted for an interview.

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV, 200 rows + header, 2 columns
- **Columns:**
  - `race` (character): `"white"` or `"black"`
  - `interviewed` (character): `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Finding
In this dataset, black-seeming applicants had a **higher** interview rate (63.4%) than white-seeming applicants (43.9%) — a difference of ~19.5 percentage points.

| Race  | Total Resumes | Interviewed | Not Interviewed | Interview Rate (%) |
|-------|:---:|:---:|:---:|:---:|
| Black | 93  | 59  | 34  | 63.4% |
| White | 107 | 47  | 60  | 43.9% |
