# Project Memory

## Research Question
Does the presence of kudzu (an invasive vine) reduce plant-species diversity in forest environments?

## Data File
- **File:** `data.csv` (located at project root)
- **Format:** CSV, 200 rows, 2 columns
- **Columns:**
  - `kudzu_coverage`: percentage of ground covered by kudzu (numeric, 0–100)
  - `diversity`: plant-species diversity score (numeric; higher = more native species variety)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("data.csv", show_col_types = FALSE)
```

## Analysis Completed
- Grouped `kudzu_coverage` into five 20-point bands (0–20%, 20–40%, 40–60%, 60–80%, 80–100%) using `dplyr`
- Computed mean, median, SD, min, and max of `diversity` within each group
- Found a strong, consistent negative association: mean diversity drops from ~46 (low kudzu) to ~12 (high kudzu), a reduction of ~74%
- Within-group SDs are small (5.6–6.8), suggesting the between-group differences are real signal
- The step-wise decline (~8–10 points per 20-point increase in coverage) is consistent with a roughly linear relationship

## Key Results (summary_table)
| Kudzu Coverage | n  | Mean Diversity | Median Diversity | SD   |
|----------------|----|----------------|------------------|------|
| 0–20%          | 38 | 46.10          | 45.80            | 6.59 |
| 20–40%         | 37 | 37.10          | 35.50            | 6.80 |
| 40–60%         | 46 | 29.80          | 29.00            | 5.66 |
| 60–80%         | 39 | 22.40          | 22.60            | 5.56 |
| 80–100%        | 40 | 12.00          | 11.70            | 6.47 |

## Possible Next Steps
- Scatter plot of `diversity` vs. `kudzu_coverage` with a regression line
- Pearson correlation between the two variables
- Linear regression model (slope, R²)
