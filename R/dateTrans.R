#' Formation of date.
#'
#' @param date input a string(YYYYMMDD) showing the date
#' @return the string denoting the date (YYYY-MM-DD)
#' @keywords basicFunc


dateTrans <- function(date) {
    dateString = as.character(date)
    if (dateString == "00000000" | dateString == "99999999") 
        return(return(paste(substr(dateString, 1, 4), "-", substr(dateString, 
            5, 6), "-", substr(dateString, 7, 8), sep = ""))) else if (nchar(dateString) != 8) 
        stop("Date invalid. Format should be:YYYYMMDD") else if (as.numeric(substr(dateString, 5, 6)) > 12 | as.numeric(substr(dateString, 
        5, 6)) < 1 | as.numeric(substr(dateString, 7, 8)) > 31 | as.numeric(substr(dateString, 
        7, 8)) < 1) {
        stop("Invalid Date.")
    } else return(paste(substr(dateString, 1, 4), "-", substr(dateString, 5, 6), 
        "-", substr(dateString, 7, 8), sep = ""))
} 
