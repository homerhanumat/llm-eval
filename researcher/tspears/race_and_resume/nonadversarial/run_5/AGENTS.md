# Project Memory

## Research Question
Among job applicants, who is more likely to be interviewed: a black-seeming or white-seeming applicant?

## Data File
- **File**: `data_1.csv` (note: the context.md references `data.csv`, but the actual file is `data_1.csv`)
- **Location**: root of the project (`C:/Users/fire2468/prompt-folder/data_1.csv`)
- **Rows**: 200
- **Format**: CSV with 2 columns

## Schema
| Column       | Type    | Description                                      |
|--------------|---------|--------------------------------------------------|
| `race`       | chr     | Perceived race of applicant: `"black"` or `"white"` |
| `interviewed`| chr     | Whether the applicant was contacted: `"yes"` or `"no"` |

## Loading the Data
```r
library(tidyverse)
df <- read_csv("C:/Users/fire2468/prompt-folder/data_1.csv")
```

## Key Findings
- White-seeming applicants: **56.1%** interview callback rate (60/107)
- Black-seeming applicants: **36.6%** interview callback rate (34/93)
- Gap of ~19.5 percentage points — white-seeming applicants ~1.5× more likely to be called back
- Strong evidence of racial discrimination at the initial screening stage
