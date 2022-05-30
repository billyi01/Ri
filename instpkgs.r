instpkgs <- function(x) {
  x |> 
    (\(x) x[!(x %in% rownames(installed.packages()))])() |>
    lapply(\(x) install.packages(x, dependencies = TRUE)) |>
    invisible()
}
