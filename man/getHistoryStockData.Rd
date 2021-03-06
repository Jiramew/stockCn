% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/getHistoryStockData.R
\name{getHistoryStockData}
\alias{getHistoryStockData}
\title{Get day-based stock data.}
\usage{
getHistoryStockData(symbol, dayLabel, startDate = "00000000",
  endDate = "99999999")
}
\arguments{
\item{symbol}{input a string show the stock symbol}

\item{dayLabel}{day-based interval label('d' for day, 'w' for week, 'm' for month)}

\item{startDate}{start date}

\item{endDate}{end date}
}
\value{
data.frame contain all the data from startDate to endDate

Date Date

Open the open price of the day

High the highest price of the day

Close the close price of the day

Low the lowest price of the day

Volumn the volume of the stock

PriceChange the price change of the stock in RMB

PercentChange the percent of the price change of the stock

MA5 mean of price of the latest 5 day

MA10 mean of price of the latest 10 day

MA20 mean of price of the latest 20 day

VMA5 mean of volume of the latest 5 day

VMA5 mean of volume of the latest 10 day

VMA5 mean of volume of the latest 20 day

Turnover turnover rate
}
\description{
Get day-based stock data.
}
\examples{
getHistoryStockData("sh600500","d",20150101,20150415)
}
\keyword{getHistoryStockData}

