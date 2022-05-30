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

"https://raw.githubusercontent.com/billyi01/Ri/main/srcUrl.r" |>
  devtools::source_url()

"instPkgs" |> srcUrl()

c("devtools", "import", "magrittr", "tidyverse", NULL) |> instPkgs()
  
import::from(magrittr, "%>%")
