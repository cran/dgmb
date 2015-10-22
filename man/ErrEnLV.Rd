\name{ErrEnLV}
\alias{ErrEnLV}
\title{Calculating disturbance terms}

\description{A function to calculate the disturbance terms of the endogenous construct.}

\usage{ErrEnLV(N, n, ben, bet, y.ex.cor)}

\arguments{
  \item{N}{The number of data sets.}
  \item{n}{The sample size of each data set.}
  \item{ben}{The number of endogenous constructs per model (default \code{=} 1).}
  \item{bet}{A vector with the true values of path coefficients (linear, nonlinear and interaction effects).}
  \item{y.ex.cor}{An array with \code{N} matrices of dimension \code{ncol(y.ex)+ncol(a.nle)+} \cr \code{ncol(a.ie)} times \code{ncol(y.ex)+ncol(a.nle)+ncol(a.ie)} with the correlations between exogenous constructs (linear, nonlinear, and interaction effects).}
}

\value{A list with the following components:
  \item{std.error}{A vector with the standard deviation of disturbance terms of the endogenous constructs. The vector length is equal to the number of replications.}
	\item{elv}{An array with \code{N} matrices of dimension \code{n} times \code{ben} with the disturbance terms of the endogenous constructs.}}

\author{Alba Martinez-Ruiz <amartine@ucsc.cl>}
	
\seealso{\code{\link{EnLVs}}, \code{\link{EnMVs}}, \code{\link{XexXen}}}

\examples{
N <- 500
n <- 250
\dontrun{
err <- ErrEnLV(N,n,intpar$ben,path.coef,yexcor$y.ex.cor)
attributes(err)}
}