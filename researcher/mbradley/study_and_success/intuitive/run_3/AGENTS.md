# Project Memory

## Data File
- `data.csv` — located in the project root folder (`c:/Users/bradl/prompt-folder/`)

## Data Schema
- `hours_per_week` (numeric): average hours per week a student studied outside of class
- `passed` (character): whether the student passed the course — values are `"yes"` or `"no"`

## Dataset Description
- 200 Engineering students at a large South American university
- Students were enrolled in a first-semester Calculus course
- 88 students passed (44%), 112 failed (56%)

## Loading the Data
```r
library(tidyverse)
df <- read_csv("c:/Users/bradl/prompt-folder/data.csv")
```

## Research Question
Are students who study more hours per week more likely to pass the Calculus course?

## Key Finding
Students who **passed** studied an average of ~4.9 hours/week; students who **failed** studied ~10.5 hours/week. The relationship is counterintuitive — more study hours were associated with *lower* pass rates, likely reflecting that struggling students spend more time studying but still fail.
