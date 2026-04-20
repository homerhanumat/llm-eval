# Project Memory

## Research Question
Among job applicants, who is more likely to be interviewed: a Black-seeming or White-seeming applicant?

## Experiment Design
- Simulated resumes sent to companies; all details identical except applicant name.
- Names either suggest a White applicant or a Black applicant.
- Outcome recorded: whether the applicant was contacted for an interview.

## Data File
- **File:** `data_2.csv` (note: context.md refers to `data.csv`, but the actual file is `data_2.csv`)
- **Location:** root of the project folder (`C:/Users/fire2468/prompt-folder/`)
- **Format:** CSV, 201 rows (1 header + 200 observations)
- **Columns:**
  - `race` — character: `"white"` or `"black"`
  - `interviewed` — character: `"yes"` or `"no"`

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("data_2.csv", show_col_types = FALSE)
```

## Key Finding
| Race  | Resumes | Interviewed | % Interviewed |
|-------|---------|-------------|---------------|
| Black | 93      | 59          | 63.4%         |
| White | 107     | 47          | 43.9%         |

Black-seeming applicants were called for interviews at a ~19.5 percentage-point higher rate than White-seeming applicants in this experiment.
