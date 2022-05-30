################################################################################
#
# "devtools" |> 
#   (\(x) x[!(x %in% rownames(installed.packages()))])() |>
#   lapply(\(x) install.packages(x, dependencies = TRUE)) |>
#   invisible()
# 
# "https://raw.githubusercontent.com/billyi01/Ri/main/init.r" |>
#   devtools::source_url()
#
################################################################################

rm(list = ls())
gc()
options(scipen=999)
Sys.setenv("_R_USE_PIPEBIND_"=TRUE)

"https://raw.githubusercontent.com/billyi01/Ri/main/instPkgs.r" |>
  devtools::source_url()

c("import", "magrittr", "tidyverse", NULL) |> instPkgs()
# rm(instpkgs)
# gc()
  
import::from(magrittr, "%>%")
