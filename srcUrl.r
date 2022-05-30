srcUrl <- \(x) paste("https://raw.githubusercontent.com/billyi01/Ri/main/", x, ".r", sep = "") |> lapply(devtools::source_url)
