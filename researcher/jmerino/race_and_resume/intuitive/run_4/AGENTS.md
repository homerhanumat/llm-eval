User: Carry out the instructions in the file context.md.

Positron Assistant: Let me start by reading the `context.md` file to understand what needs to be done.

Retrieved file contents

context.md

Retrieved file contents

data.csvThe data has `race` and `interviewed` columns with 201 observations. I'll load it, compute interview rates by race, and produce a summary table.


```r

library(tidyverse)

resumes <- read_csv("data.csv")

summary_table <- resumes |>
  summarize(
    n = n(),
    n_interviewed = sum(interviewed == "yes"),
    pct_interviewed = mean(interviewed == "yes") * 100,
    .by = race
  ) |>
  arrange(desc(pct_interviewed))

summary_table

```


Here are the results and interpretation:

---

### Summary Table: Interview Rates by Applicant Race

| Race  | Resumes Sent | Interviewed | Interview Rate |
|-------|-------------|-------------|----------------|
| Black | 93          | 59          | 63.4%          |
| White | 107         | 47          | 43.9%          |

---

### Interpretation

The data show a striking reversal of what one might expect based on real-world hiring discrimination research: **black-seeming applicants were called for interviews at a notably higher rate (63.4%) than white-seeming applicants (43.9%)** — a gap of roughly 19.5 percentage points.

A few points worth noting:

- The sample is relatively small (200 resumes total), so this gap, while large in magnitude, should be evaluated for statistical significance before drawing firm conclusions.
- The group sizes are unequal (93 black-seeming vs. 107 white-seeming resumes), which is worth accounting for in any further analysis.
- This result runs counter to findings from well-known resume audit studies (e.g., Bertrand & Mullainathan 2004), which found *lower* callback rates for black-seeming names. If this is a real experiment, the design, context (industry, region, era), or the specific names used may explain the divergence.

In direct answer to the research question: **in this experiment, black-seeming applicants were more likely to be interviewed than white-seeming applicants.**