#!/usr/bin/env Rscript

total_memory <- as.numeric(system2('cat',
    args = "/proc/meminfo | tr -d ' kB' | cut -d ':' -f 2",
    stdout = TRUE)[1])

repeat {
    current_desktop <- system2('xdotool', args = 'get_desktop', stdout = TRUE)
    memory_percent <- (total_memory - as.numeric(system2('cat',
        args = "/proc/meminfo | tr -d ' kB' | cut -d ':' -f 2",
        stdout = TRUE)[3])) / total_memory * 100
    show_memory <- paste0(c("RAM: ", round(memory_percent), "%"), collapse = "")
    result <- c(show_memory, current_desktop, date())
    cat(result, fill = TRUE)
    Sys.sleep(0.1)
}
