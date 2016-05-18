#' Get day-based stock data.
#'
#' @param symbol input a string show the stock symbol
#' @param minLabel minute-based interval label(5 for 5 minutes, 15 for 15 minutes, 30 for 30 minutes, 60 for an hour)
#' @param startDate start date
#' @param endDate end date
#' @return data.frame contain all the data from startDate to endDate
#' @return Date Date
#' @return Open the open price of the day
#' @return High the highest price of the day
#' @return Close the close price of the day
#' @return Low the lowest price of the day
#' @return Volumn the volume of the stock
#' @return PriceChange the price change of the stock in RMB
#' @return PercentChange the percent of the price change of the stock
#' @return MA5 mean of price of the latest 5 day
#' @return MA10 mean of price of the latest 10 day
#' @return MA20 mean of price of the latest 20 day
#' @return VMA5 mean of volume of the latest 5 day
#' @return VMA5 mean of volume of the latest 10 day
#' @return VMA5 mean of volume of the latest 20 day
#' @return Turnover turnover rate(there will be no turnover ratio for the index)
#' @keywords getHistoryStockDataMin
#' @export
#' @import rjson
#' @examples
#' getHistoryStockDataMin("sh600500",30,20150203,20150203)

getHistoryStockDataMin <- function(symbol, minLabel, startDate = "00000000", endDate = "99999999") {
    startDate = dateTrans(startDate)
    endDate = dateTrans(endDate)
    
    url = paste("http://api.finance.ifeng.com/akmin?scode=", symbol, "&type=", 
        minLabel, sep = "")
    data = fromJSON(readLines(url, warn = FALSE))
    
    stockMinDataMatrix = matrix(rep(0, 15))
    
    for (i in 1:length(data$record)) {
        if (strsplit(data$record[[i]][[1]], " ")[[1]][1] >= startDate & strsplit(data$record[[i]][[1]], 
            " ")[[1]][1] <= endDate) {
            for (j in 1:15) {
                stockMinDataMatrix = matrix(append(stockMinDataMatrix, data$record[[i]][[j]]))
            }
        } else if (strsplit(data$record[[i]][[1]], " ")[[1]][1] > endDate) 
            break
    }
    stockMinDataMatrix = t(matrix(stockMinDataMatrix, nrow = 15))[-1, ]
    
    stockMinDataFrame = as.data.frame(stockMinDataMatrix)
    colnames(stockMinDataFrame) = c("Date", "Open", "High", "Close", "Low", "Volume", 
        "PriceChange", "PercentChange", "MA5", "MA10", "MA20", "VMA5", "VMA10", 
        "VMA20", "Turnover")
    return(stockMinDataFrame)
} 
