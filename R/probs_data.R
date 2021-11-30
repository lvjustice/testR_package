#include data
#code to prepare 'probs' dataset (which is just these three numbers for now)
probs <- tibble::tibble(p = c(0.25, 0.5, 0.75))
usethis::use_data(probs, overwrite = TRUE)
