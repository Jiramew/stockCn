#' Refreshing stock data.
#'
#' @param symbol input a string in the double quotes showing the stock symbol
#' @keywords dynamicUIStock 
#' @export

dynamicUIStock <- function(symbol) {
    par(bty = "n", xaxt = "n", yaxt = "n", mar = c(3, 0.1, 3, 0.1))
    
    while (1) {
        stockData <- getData(symbol)
        setBasicUI()
        setData(stockData)
        flush.console()
        Sys.sleep(5)
    }
} 
