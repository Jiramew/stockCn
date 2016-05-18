\name{StockCn-package}
\alias{StockCn-package}
\alias{StockCn}
\docType{package}
\title{
Collecting Chinese Stock data
}
\description{
Collecting Chinese Stock data and showing some possible visualization. Please add "sh" for ShangHai and "sz" for ShenZhen before the stock code.
}
\details{
\tabular{ll}{
Package: \tab StockCn\cr
Type: \tab Package\cr
Version: \tab 0.1\cr
Date: \tab 2015-04-27\cr
License: \tab GPL\cr
}
}
\author{
Hanbing Yang

Maintainer: Hanbing Yang <hanbingflying@sina.com>
}
\references{
The data collected are mainly get from Sina finance, Ifeng finance and other finance website.
}
\keyword{ package }

\examples{
getAllStockCur()
getHistoryIndex("sh000001","d",20150101,20150415)
getHistoryStockData("sh600500","d",20150101,20150415)
getHistoryStockDataMin("sh600500",30,20150427,20150427)
}
