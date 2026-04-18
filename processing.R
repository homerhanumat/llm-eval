library(tidyverse)

researcher_root <- "researcher"

# Read score.txt and return TRUE/FALSE/NA.
# Returns NA if AGENTS.md or score.txt is missing, or if score.txt
# does not contain exactly one non-empty line equal to "correct" or "incorrect".
# Records unexpected content in the calling environment's `bad_scores` list.
score_to_correct <- function(run_path) {
  agents_file <- file.path(run_path, "AGENTS.md")
  score_file  <- file.path(run_path, "score.txt")

  if (!file.exists(agents_file) || !file.exists(score_file)) return(NA)

  lines <- trimws(readLines(score_file, warn = FALSE))
  lines <- lines[nchar(lines) > 0]

  if (length(lines) != 1) {
    bad_scores[[run_path]] <<- if (length(lines) == 0) "<empty>" else paste(lines, collapse = " | ")
    return(NA)
  }

  switch(lines,
    "correct"   = TRUE,
    "incorrect" = FALSE,
    {
      bad_scores[[run_path]] <<- lines
      NA
    }
  )
}

bad_scores <- list()

run_dirs <- fs::dir_ls(researcher_root, type = "directory", recurse = TRUE) |>
  keep(\(p) str_detect(p, "/run_\\d+$")) |>
  as.character()

# Split each path into components and build the data frame
path_parts <- strsplit(run_dirs, "/")

results <- tibble(
  path       = run_dirs,
  researcher = map_chr(path_parts, 2),
  scenario   = map_chr(path_parts, 3),
  type       = map_chr(path_parts, 4),
  run        = map_chr(path_parts, 5),
  correct    = map_lgl(path, score_to_correct)
)  |>
  select(-path)

if (length(bad_scores) > 0) {
  warning(
    length(bad_scores), " score.txt file(s) had unexpected content:\n",
    paste0("  ", names(bad_scores), ": ", unlist(bad_scores), collapse = "\n")
  )
} else {
  message("Validation passed: all score.txt files contain 'correct' or 'incorrect'.")
}

save(results, file = "data/results.rda")
