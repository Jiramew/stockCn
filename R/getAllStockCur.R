#' get all the stock data of the latest day.
#'
#' @keywords getAllStockCur
#' @return data.frame contain all the data from the latest trading day
#' @return symbol Stock Symbol
#' @return code Stock Code
#' @return name Stock Name
#' @return trade the current trading price
#' @return pricechange the price change of the stock in RMB
#' @return changepercent the percent of the price change of the stock
#' @return buy buy price
#' @return sell sell price
#' @return settlement close price of the last day 
#' @return open open price
#' @return high highest price
#' @return low lowest price
#' @return volume the volume
#' @return amount number of trading stocks * trading price
#' @return ticktime time
#' @return per Price-Earnings Ratio
#' @return pb Price/Book value
#' @return mktcap market capital
#' @return nmc market value
#' @return turnoverratio turnover ratio
#' @export
#' @examples
#' getAllStockCur()

getAllStockCur <- function() {
    df = parsingDayprice(1)
    if (!is.null(df)) {
        for (i in 2:40) {
            newdf = parsingDayprice(i)
            df = rbind(df, newdf)
        }
    }
    return(df)
} 
