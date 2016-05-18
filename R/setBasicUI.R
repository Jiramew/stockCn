#' Setting the basic UI.
#'
#' @keywords basicFunc


setBasicUI <- function() {
    height = 10
    width = 14
    
    x <- seq(0, height, 0.01)
    y <- seq(0, width, 0.01)
    
    plot(rep(2, length(x)), x, type = "l", xlab = "", ylab = "", xlim = c(0, width))
    
    for (i in seq(0, width, 2)) {
        lines(rep(i, length(x)), x)
    }
    
    for (i in seq(0, height, 1)) {
        lines(y, rep(i, length(y)))
    }
    
    title(main = "stock", font = 3, cex = 5)
    
    text(1, 9.5, "NAME")
    text(3, 9.5, "LDCLOSE")
    text(5, 9.5, "TDOPEN")
    text(7, 9.5, "TDHIGH")
    text(9, 9.5, "TDLOW")
    text(11, 9.5, "NUMSTOCK")
    text(13, 9.5, "VOLUME")
    text(1, 7.5, "CURRPRICE")
    text(5, 7.5, "BUY1PRICE")
    text(7, 7.5, "BUY2PRICE")
    text(9, 7.5, "BUY3PRICE")
    text(11, 7.5, "BUY4PRICE")
    text(13, 7.5, "BUY5PRICE")
    text(5, 5.5, "BUY1NUM")
    text(7, 5.5, "BUY2NUM")
    text(9, 5.5, "BUY3NUM")
    text(11, 5.5, "BUY4NUM")
    text(13, 5.5, "BUY5NUM")
    text(5, 3.5, "SELL1PRICE")
    text(7, 3.5, "SELL2PRICE")
    text(9, 3.5, "SELL3PRICE")
    text(11, 3.5, "SELL4PRICE")
    text(13, 3.5, "SELL5PRICE")
    text(5, 1.5, "SELL1NUM")
    text(7, 1.5, "SELL2NUM")
    text(9, 1.5, "SELL3NUM")
    text(11, 1.5, "SELL4NUM")
    text(13, 1.5, "SELL5NUM")
    text(1, 1.5, "TIME")
    text(1, 3.5, "DATE")
}
 
