\name{EnLVs}
\alias{EnLVs}
\title{Calculating endogenous constructs}

\description{A function to calculate endogenous constructs.}

\usage{EnLVs(N, n, ben, bet, elv, y.ex.tot)}

\arguments{
  \item{N}{The number of data sets.}
  \item{n}{The sample size of each data set.}
  \item{ben}{The number of endogenous constructs per model (default \code{=} 1).}
  \item{bet}{A vector with the true values of path coefficients (linear, nonlinear and interaction effects).}
  \item{elv}{An array with \code{N} matrices of dimension \code{n} times \code{ben} with the disturbance terms of the endogenous constructs.}
  \item{y.ex.tot}{An array with \code{N} matrices of dimension \code{n} times \code{ncol(y.ex)+ncol(a.nle)+} \cr \code{ncol(a.ie)} with the scores of exogenous constructs (linear, nonlinear, and interaction effects).}
}

\value{\item{y.en}{An array with \code{N} matrices of dimension \code{n} times \code{ben} with the scores of endogenous constructs.}}

\author{Alba Martinez-Ruiz <amartine@ucsc.cl>}

\seealso{\code{\link{EnMVs}}, \code{\link{XexXen}}}

\examples{
N <- 500
n <- 250
\dontrun{
yen <- EnLVs(N,n,intpar$ben,path.coef,err$elv,yexcor$y.ex.tot)
attributes(yen)}
}