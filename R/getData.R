#' Get Stock Data.
#'
#' @param symbol input a string show the stock symbol
#' @return the stock data
#' @keywords basicFunc

getData <- function(symbol) {
    url <- paste("http://hq.sinajs.cn/list=", symbol, sep = "")
    data <- strsplit(strsplit(readLines(url), "\"")[[1]][2], ",")
    return(data)
} 
