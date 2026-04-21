User: Carry out the instructions in the file context.md.

Positron Assistant: Retrieved file contents

context.md

Retrieved file contents

data.csv

Created 3 todos


```R

library(tidyverse)

data <- read_csv("data.csv")

summary_table <- data |>
  summarize(
    n = n(),
    n_interviewed = sum(interviewed == "yes"),
    interview_rate = mean(interviewed == "yes"),
    .by = race
  ) |>
  arrange(race)

summary_table

```


Starting: *Interpret results* (3/3)

Here is the summary table:

| Race  | N   | Interviewed | Interview Rate |
|-------|-----|-------------|----------------|
| Black | 93  | 34          | 36.6%          |
| White | 107 | 60          | 56.1%          |

**Interpretation:**

The data provide clear evidence of racial bias in interview callbacks. Resumes with white-seeming names were called for interviews at a rate of **56.1%**, compared to only **36.6%** for resumes with black-seeming names — a gap of roughly **19.5 percentage points**.

Since the resumes were identical in all respects except the applicant's name, any difference in callback rates can be attributed to the perceived race of the applicant rather than qualifications. This experiment suggests that applicants with black-seeming names face a substantially lower likelihood of being contacted for an interview, consistent with racial discrimination in hiring.

Completed: *Interpret results* (3/3)