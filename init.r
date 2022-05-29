rm(list = ls())
gc()
options(scipen=999)
Sys.setenv("_R_USE_PIPEBIND_"=TRUE)

c("import", "magrittr", "tidyverse", NULL) |> 
  (function(x) x[!(x %in% rownames(installed.packages()))])() |>
  lapply(\(x) install.packages(x, dependencies = TRUE)) |>
  invisible()
  
import::from(magrittr, "%>%")
