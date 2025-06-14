% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statpsych1.R
\name{sim.ci.mean2}
\alias{sim.ci.mean2}
\title{Simulates confidence interval coverage probability for a 2-group mean
difference}
\usage{
sim.ci.mean2(alpha, n1, n2, sd2, dist1, dist2, rep)
}
\arguments{
\item{alpha}{alpha level for 1-alpha confidence}

\item{n1}{sample size in group 1}

\item{n2}{sample size in group 2}

\item{sd2}{population standard deviation for group 2}

\item{dist1}{type of distribution for group 1 (1, 2, 3, 4, or 5)}

\item{dist2}{type of distribution for group 2 (1, 2, 3, 4, or 5)
\itemize{
\item 1 = Gaussian (skewness = 0 and excess kurtosis = 0)
\item 2 = platykurtic (skewness = 0 and excess kurtosis = -1.2)
\item 3 = leptokurtic (skewness = 0 and excess kurtosis = 6)
\item 4 = moderate skew (skewness = 1 and excess kurtosis = 1.5)
\item 5 = large skew (skewness = 2 and excess kurtosis = 6)
}}

\item{rep}{number of Monte Carlo samples}
}
\value{
Returns a 1-row matrix. The columns are:
\itemize{
\item Coverage - probability of confidence interval including population mean difference
\item Lower Error - probability of lower limit greater than population mean difference
\item Upper Error - probability of upper limit less than population mean difference
\item Ave CI Width - average confidence interval width
}
}
\description{
Performs a computer simulation of separate variance and pooled variance
confidence interval performance for a population mean difference in a
2-group design. Sample data within each group can be generated from five
different population distributions. All distributions are scaled to have
a standard deviation of 1.0 for group 1.
}
\examples{
sim.ci.mean2(.05, 30, 25, 1.5, 1, 1, 1000)

# Should return (within sampling error):
#                              Coverage Lower Error Upper Error Ave CI Width
# Equal Variances Assumed:      0.93988      0.0322     0.02792     1.354437
# Equal Variances Not Assumed:  0.94904      0.0262     0.02476     1.411305

sim.ci.mean2(.05, 30, 25, 1.5, 4, 5, 1000)

# Should return (within sampling error):
#                              Coverage Lower Error Upper Error Ave CI Width
# Equal Variances Assumed:      0.93986     0.04022     0.01992     1.344437
# Equal Variances Not Assumed:  0.94762     0.03862     0.01376     1.401305


}
