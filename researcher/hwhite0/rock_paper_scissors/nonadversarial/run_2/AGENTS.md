# Project Memory: Rock-Paper-Scissors Experiment

## Research Question
What is the best first move to play against a random person: rock, paper, or scissors?

## Data File
- **File:** `data.csv` (located at the project root)
- **Format:** CSV with 300 rows and 2 columns:
  - `selections`: the man's move (`rock`, `paper`, or `scissors`)
  - `outcome`: result of that move (`W` = win, `L` = loss, `T` = tie)
- There is also a `data_1.csv` file in the project root (contents not yet explored).

## Loading the Data
```r
library(tidyverse)
rps <- read_csv("data.csv")
```

## Summary Table (from analysis)
| Selection | Wins | Losses | Ties | Total | Win % | Loss % | Tie % |
|-----------|------|--------|------|-------|-------|--------|-------|
| Scissors  |  35  |   21   |  32  |  88   | 39.8% |  23.9% | 36.4% |
| Paper     |  29  |   32   |  42  | 103   | 28.2% |  31.1% | 40.8% |
| Rock      |  29  |   52   |  28  | 109   | 26.6% |  47.7% | 25.7% |

## Key Findings
- **Scissors** had the highest win rate (39.8%) and the lowest loss rate (23.9%) — the best first move.
- **Rock** had the worst performance: highest loss rate (47.7%), suggesting opponents tended to play paper.
- **Paper** was middling, with more losses than wins.
- Conclusion: scissors is the best opening move against a random opponent in this sample.

## Analysis Approach
- Used `tidyverse` (`readr` to load, `dplyr` + `tidyr` to summarise and pivot).
- Grouped by `selections` and `outcome`, pivoted wide, computed win/loss/tie percentages.
