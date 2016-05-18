#' Get Day-based label.
#'
#' @param dayLabel input a string show the label
#' @return the string denoting the data grouping
#' @keywords basicFunc

getDayLabel <- function(dayLabel) {
    if (dayLabel %in% c("d", "w", "m", "D", "W", "M")) 
        switch(dayLabel, d = "akdaily", w = "akweekly", m = "akmonthly", D = "akdaily", 
            W = "akweekly", M = "akmonthly") else stop("Invalid Day Label. Should be d(for day), w(for week) or m(for month)")
} 
