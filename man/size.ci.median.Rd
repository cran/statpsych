% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statpsych1.R
\name{size.ci.median}
\alias{size.ci.median}
\title{Sample size for a median confidence interval}
\usage{
size.ci.median(alpha, var, w, dist)
}
\arguments{
\item{alpha}{alpha level for 1-alpha confidence}

\item{var}{planning value of response variable variance}

\item{w}{desired confidence interval width}

\item{dist}{\itemize{
\item set to 1 for Normal distribution (skew = 0, kurtosis = 3)
\item set to 2 for Logistic distribution (skew = 0, kurtosis = 4.2)
\item set to 3 for Laplace distribution (skew = 0, kurtosis = 6)
\item set to 4 for Gamma(5) (skew = .89, kurtosis = 4.2)
\item set to 5 for Exponential distribution (skew = 2, kurtosis = 9)
}}
}
\value{
Returns the required sample size
}
\description{
Computes the sample size required to estimate a population median with
desired confidence interval precision. Set the variance planning value to
the largest value within a plausible range for a conservatively large
sample size. The sample size requirement depends on the shape of the
distribution. Select one of the four distribution options (Normal, Logistic,
Laplace, Exponential) that approximates the most likely distribution shape
in the planned study. Select the Normal distribution for a conservatively
large sample size requirement.
}
\examples{
size.ci.median(.05, 264.4, 10, 1)

# Should return:
# Sample size
#          64
 
size.ci.median(.05, 264.4, 10, 3)

# Should return:
# Sample size
#          21


}
\references{
\insertRef{Bonett2002}{statpsych}
}
