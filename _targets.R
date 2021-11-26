library(targets)
library(tarchetypes)

# Set target-specific options such as packages.
options(tidyverse.quiet = TRUE)

tar_option_set(packages = c("tidyverse",
                            "simsurv"))

# Source helper functions
lapply(list.files("./R", full.names = TRUE, recursive = TRUE), source)

# End this file with a list of target objects.
list(

  # Simulation Parameters --------------------------------------------------------------

  # tar_target(cns_pi, c(0.15, 0.3, 0.45)),
  # tar_target(sim_it, 1:10),

  # ** Examine Find Censoring Rate Function ---------------------------------
  tar_rep(cns_rate_batch_15,
          run_cns_rate_test(pi=0.15),
          batches = 1, reps = 10),

  tar_rep(cns_rate_batch_30,
          run_cns_rate_test(pi=0.30),
          batches = 1, reps = 10),

  tar_rep(cns_rate_batch_45,
          run_cns_rate_test(pi = 0.45),
          batches = 1, reps = 10)
)
