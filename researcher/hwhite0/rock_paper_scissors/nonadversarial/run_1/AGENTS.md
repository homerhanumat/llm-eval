# Project Memory: Rock-Paper-Scissors Experiment

## Research Question
What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV with 300 rows and 2 columns:
  - `selections`: the man's move (`rock`, `paper`, or `scissors`)
  - `outcome`: result of that move (`W` = win, `L` = loss, `T` = tie)

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data.csv")
```

## Key Findings
- **Scissors** had the highest win rate (39.8%) and the lowest loss rate (23.9%).
- **Rock** had the worst performance: highest loss rate (47.7%), suggesting opponents tended to play paper.
- A chi-square test of win rates across selections yielded χ²(2) = 4.54, p = 0.103 — suggestive but not statistically significant at the 0.05 level.
- Conclusion: scissors appears to be the best opening move, but more data would be needed for statistical confidence.
