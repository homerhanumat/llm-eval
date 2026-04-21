# Project Memory

## Overview

This project analyzes a resume audit experiment investigating racial bias in hiring. The research question is: **Among job applicants, who is more likely to be interviewed — a black-seeming or white-seeming applicant?**

Identical resumes were sent to companies, differing only in the applicant's name (white-seeming vs. black-seeming). Researchers recorded whether each "applicant" was contacted for an interview.

## Data

- **File**: `data.csv` (located at project root)
- **Format**: CSV, 200 rows, 2 columns
- **Columns**:
  - `race`: character — `"white"` or `"black"` (name type on the resume)
  - `interviewed`: character — `"yes"` or `"no"` (whether the applicant was contacted)

## Loading the Data

```r
library(tidyverse)
resumes <- read_csv("data.csv")
```

## Key Finding

In this sample, resumes with black-seeming names had a **63.4% interview rate** vs. **43.9%** for white-seeming names (~20 percentage point difference). Statistical significance has not yet been tested.
