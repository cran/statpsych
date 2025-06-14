% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statpsych1.R
\name{ci.stdmean}
\alias{ci.stdmean}
\title{Confidence interval for a standardized mean}
\usage{
ci.stdmean(alpha, m, sd, n, h)
}
\arguments{
\item{alpha}{alpha level for 1-alpha confidence}

\item{m}{estimated mean}

\item{sd}{estimated standard deviation}

\item{n}{sample size}

\item{h}{hypothesized value of mean}
}
\value{
Returns a 1-row matrix. The columns are:
\itemize{
\item Estimate - estimated standardized mean difference
\item adj Estimate - bias adjusted standardized mean difference estimate
\item SE - standard error
\item LL - lower limit of the confidence interval
\item UL - upper limit of the confidence interval
}
}
\description{
Computes a confidence interval for a population standardized mean
difference from a hypothesized value. If the hypothesized value is set
to 0, the reciprocals of the confidence interval endpoints gives a
confidence interval for the coefficient of variation (see \link[statpsych]{ci.cv}).
}
\examples{
ci.stdmean(.05, 24.5, 3.65, 40, 20)

# Should return:
# Estimate  adj Estimate        SE        LL       UL
# 1.232877      1.209015 0.2124335 0.8165146 1.649239
 

}
\references{
\insertRef{Bonett2008}{statpsych}
}
