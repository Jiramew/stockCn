#' Get stock data of the specific pageNum.
#' @param pageNum the pageNum in the correlated website
#' @keywords basicFunc
#' @import rjson

parsingDayprice <- function(pageNum = 1) {
    url = paste("http://vip.stock.finance.sina.com.cn/quotes_service/api/json_v2.php/Market_Center.getHQNodeData?num=80&sort=changepercent&asc=0&node=hs_a&symbol=&_s_r_a=page&page=", 
        pageNum, sep = "")
    text = readLines(url, warn = FALSE)
    if (text == "null") 
        return(NULL) 
	else {
        text = gsub("symbol", "\"symbol\"", text)
        text = gsub("code", "\"code\"", text)
        text = gsub("name", "\"name\"", text)
        text = gsub("trade", "\"trade\"", text)
        text = gsub("pricechange", "\"pricechange\"", text)
        text = gsub("changepercent", "\"changebaifen\"", text)
        text = gsub("per", "\"per\"", text)
        text = gsub("buy", "\"buy\"", text)
        text = gsub("sell", "\"sell\"", text)
        text = gsub("settlement", "\"settlement\"", text)
        text = gsub("open", "\"open\"", text)
        text = gsub("high", "\"high\"", text)
        text = gsub("low", "\"low\"", text)
        text = gsub("volume", "\"volume\"", text)
        text = gsub("amount", "\"amount\"", text)
        text = gsub("ticktime", "\"ticktime\"", text)
        text = gsub("pb", "\"pb\"", text)
        text = gsub("mktcap", "\"mktcap\"", text)
        text = gsub("nmc", "\"nmc\"", text)
        text = gsub("turnoverratio", "\"turnoverratio\"", text)
        
        data = fromJSON(text)
        mat = matrix(rep(0, 20))
        for (i in 1:length(data)) {
            for (j in 1:20) {
                mat = matrix(append(mat, data[[i]][[j]]))
            }
        }
        mat = t(matrix(mat, nrow = 20))[-1, ]
        df = as.data.frame(mat)
        colnames(df) = c("symbol", "code", "name", "trade", "pricechange", "changepercent", 
            "buy", "sell", "settlement", "open", "high", "low", "volume", "amount", 
            "ticktime", "per", "pb", "mktcap", "nmc", "turnoverratio")
        return(df)
    }
} 
