# Project Memory

## Dataset: `data.csv`

- **Location:** `/Users/homer/git/prompt-folder/data.csv`
- **Format:** CSV, 200 rows × 2 columns
- **Population:** 200 Engineering students enrolled in a first-semester Calculus course at a large university in South America

### Columns

| Column | Type | Description |
|--------|------|-------------|
| `hours_per_week` | numeric (double) | Average hours per week the student studied outside of class |
| `passed` | character | Whether the student passed the course (`"yes"` or `"no"`) |

## Research Question

Are students who study more hours per week more likely to pass the Calculus course?

## Loading the Data

```r
library(tidyverse)
df <- read_csv("/Users/homer/git/prompt-folder/data.csv")
```

## Key Findings

- 113 students passed (56.5%), 87 did not pass (43.5%).
- Students who **passed** averaged **10.5 hrs/week** (median 10.6); students who **did not pass** averaged **4.9 hrs/week** (median 4.2).
- The ~5.5-hour gap in means is large relative to within-group SDs (~3 hrs), providing strong evidence that more study time is associated with a higher likelihood of passing.
