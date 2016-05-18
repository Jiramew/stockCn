#' Set Stock Data to UI.
#'
#' @param data the data to be set
#' @keywords basicFunc

setData <- function(data) {
    text(1, 8.5, data[[1]][1])
    text(3, 8.5, data[[1]][3])
    text(5, 8.5, data[[1]][2])
    text(7, 8.5, data[[1]][5])
    text(9, 8.5, data[[1]][6])
    text(11, 8.5, ceiling(as.numeric(data[[1]][9])/100))
    text(13, 8.5, ceiling(as.numeric(data[[1]][10])/10000))
    text(1, 6.5, data[[1]][4])
    text(5, 6.5, data[[1]][12])
    text(7, 6.5, data[[1]][14])
    text(9, 6.5, data[[1]][16])
    text(11, 6.5, data[[1]][18])
    text(13, 6.5, data[[1]][20])
    text(5, 4.5, ceiling(as.numeric(data[[1]][11])/100))
    text(7, 4.5, ceiling(as.numeric(data[[1]][13])/100))
    text(9, 4.5, ceiling(as.numeric(data[[1]][15])/100))
    text(11, 4.5, ceiling(as.numeric(data[[1]][17])/100))
    text(13, 4.5, ceiling(as.numeric(data[[1]][19])/100))
    text(5, 2.5, data[[1]][22])
    text(7, 2.5, data[[1]][24])
    text(9, 2.5, data[[1]][26])
    text(11, 2.5, data[[1]][28])
    text(13, 2.5, data[[1]][30])
    text(5, 0.5, ceiling(as.numeric(data[[1]][21])/100))
    text(7, 0.5, ceiling(as.numeric(data[[1]][23])/100))
    text(9, 0.5, ceiling(as.numeric(data[[1]][25])/100))
    text(11, 0.5, ceiling(as.numeric(data[[1]][27])/100))
    text(13, 0.5, ceiling(as.numeric(data[[1]][29])/100))
    text(1, 0.5, data[[1]][32])
    text(1, 2.5, data[[1]][31])
} 
