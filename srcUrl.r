srcUrl <- function(x) {
  x %>%
    paste("https://raw.githubusercontent.com/billyi01/Ri/main/", ., ".r", sep = "") %>%
    lapply(devtools::source_url)
}
