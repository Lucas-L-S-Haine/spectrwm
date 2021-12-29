#!/usr/bin/env Rscript

total_memory <- as.numeric(system2("cat",
    args = "/proc/meminfo | tr -d ' kB' | cut -d ':' -f 2",
    stdout = TRUE)[1])

repeat {
    # current_desktop <- system2('xdotool', args = 'get_desktop', stdout = TRUE)
    # Volume:
    volume <- paste0(c('Vol',
        system2('pulsemixer', args = '--get-volume', stdout = TRUE)),
        collapse = ': '
    )
    # Memory usage:
    memory_percent <- (total_memory - as.numeric(system2("cat",
        args = "/proc/meminfo | tr -d ' kB' | cut -d ':' -f 2",
        stdout = TRUE)[3])) / total_memory * 100
    show_memory <- paste0(c("RAM: ", round(memory_percent), "%"), collapse = "")
    # Current timestamp:
    current_time <- format(Sys.time(), format = "%A, %d/%m/%Y %R")
    # Parse and print result:
    result <- c(volume, show_memory, current_time)
    cat(paste0(result, collapse = " | "), fill = TRUE)
    Sys.sleep(0.1)
}
