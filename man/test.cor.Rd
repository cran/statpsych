% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statpsych2.R
\name{test.cor}
\alias{test.cor}
\title{Hypothesis test for a Pearson or partial correlation}
\usage{
test.cor(cor, n, s, h)
}
\arguments{
\item{cor}{estimated correlation}

\item{n}{sample size}

\item{s}{number of control variables}

\item{h}{null hypothesis value of correlation}
}
\value{
Returns a 1-row matrix. The columns are:
\itemize{
\item Estimate - estimate of correlation
\item t or z - t test statistic (for h = 0) or z test statistic (for nonzero h)
\item p - two-sided p-value
}
}
\description{
Computes a t test for a test of the null hypothesis that a population
Pearson or partial correlations is equal to 0, or a z test using a Fisher
transformation for a test of the null hypothesis that a Pearson or
partial correlation is equal to some specified nonzero value. Set s = 0
for a Pearson correlation. The hypothesis testing results should be
accompanied with a confidence interval for the population Pearson or
partial correlation value (see \link[statpsych]{ci.cor}).
}
\examples{
test.cor(.484, 100, 0, .2)

# Should return:
# Estimate        z           p
#    0.484 3.205432 0.001348601


test.cor(.372, 100, 0, 0)

# Should return:
#  Estimate        t df           p
#     0.372 3.967337 98 0.000138436


}
