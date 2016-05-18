#' Get day-based stock Index data.
#'
#' @param symbol input a string show the Index symbol
#' @param dayLabel day-based interval label('d' for day, 'w' for week, 'm' for month)
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
#' @keywords getHistoryIndex
#' @export
#' @import rjson
#' @examples
#' getHistoryIndex("sh000001","d",20150101,20150415)

getHistoryIndex <- function(symbol, dayLabel, startDate = "00000000", endDate = "99999999") {
    startDate = dateTrans(startDate)
    endDate = dateTrans(endDate)
    
    url = paste("http://api.finance.ifeng.com/", getDayLabel(dayLabel), "/?code=", 
        symbol, "&type=last", sep = "")
    data = fromJSON(readLines(url, warn = FALSE))
    
    stockDataMatrix = matrix(rep(0, 14))
    for (i in 1:length(data$record)) {
        if (data$record[[i]][1] >= startDate & data$record[[i]][1] <= endDate) {
            stockDataMatrix = matrix(append(stockDataMatrix, data$record[[i]]))
        } else if (data$record[[i]][1] > endDate) 
            break
    }
    
    stockDataMatrix = t(matrix(stockDataMatrix, nrow = 14))[-1, ]
    if (length(stockDataMatrix) == 14) 
        stockDataFrame = data.frame(t(stockDataMatrix)) else stockDataFrame = data.frame(stockDataMatrix)
    colnames(stockDataFrame) = c("Date", "Open", "High", "Close", "Low", "Volume", 
        "PriceChange", "PercentChange", "MA5", "MA10", "MA20", "VMA5", "VMA10", 
        "VMA20")
    return(stockDataFrame)
} 
