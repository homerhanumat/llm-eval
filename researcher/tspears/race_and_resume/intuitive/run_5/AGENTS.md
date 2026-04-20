# Project Memory

## Overview
This project analyzes data from a resume audit experiment investigating racial bias in hiring callbacks.

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Data File
- **File**: `data_2.csv` (note: context.md refers to `data.csv`, but the actual file is `data_2.csv`)
- **Location**: root of the project folder (`C:/Users/fire2468/prompt-folder/`)
- **Rows**: 200
- **Columns**: 2

## Data Schema
| Column       | Type    | Values          | Description                                      |
|--------------|---------|-----------------|--------------------------------------------------|
| `race`       | character | `"white"`, `"black"` | Perceived race of applicant based on name on resume |
| `interviewed`| character | `"yes"`, `"no"`     | Whether the applicant was contacted for an interview |

## Loading the Data
```r
library(tidyverse)
resumes <- read_csv("C:/Users/fire2468/prompt-folder/data_2.csv")
```

## Key Findings
- Black-seeming applicants: **63.4%** callback rate (59 out of 93)
- White-seeming applicants: **43.9%** callback rate (47 out of 107)
- The difference (~19.5 percentage points) is surprising relative to prior literature (e.g., Bertrand & Mullainathan 2004), which found the opposite pattern.
- A formal statistical test (chi-squared or two-proportion z-test) has not yet been run to assess significance.
