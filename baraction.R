#!/usr/bin/env Rscript

repeat {
  Sys.setenv(workspace = system2('xdotool',
    args = 'get_desktop', stdout = TRUE))
  result <- c(Sys.getenv('workspace'), date())
  cat(result, fill = TRUE)
  Sys.sleep(1)
}
