\name{ExoLVsCor}
\alias{ExoLVsCor}
\title{Calculating correlations between exogenous constructs}

\description{A function to calculate correlations between exogenous constructs.}

\usage{ExoLVsCor(N, n, bex, rie, y.ex, a.nle, a.ie)}

\arguments{
  \item{N}{The number of data sets.}
  \item{n}{The sample size of each data set.}
  \item{bex}{The number of exogenous constructs.}
  \item{rie}{A binary matrix specifying nonlinear and interaction effects on the endogenous construct.}
  \item{y.ex}{An array with \code{N} matrices of dimension \code{n} times \code{bex} with the scores of exogenous constructs.}
  \item{a.nle}{An array with \code{N} matrices of dimension \code{n} times \code{ncol(rie)} with the scores of nonlinear effects.}
  \item{a.ie}{An array with \code{N} matrices of dimension \code{n} times \code{ncol(rie)} with the scores of interaction effects.}
}

\value{A list with the following components:
  \item{y.ex.tot}{An array with \code{N} matrices of dimension \code{n} times \code{ncol(y.ex)+ncol(a.nle)+} \cr \code{ncol(a.ie)} with the scores of exogenous constructs (linear, nonlinear, and interaction effects).}
	\item{y.ex.cor}{An array with \code{N} matrices of dimension \code{ncol(y.ex)+ncol(a.nle)+} \cr \code{ncol(a.ie)} times \code{ncol(y.ex)+ncol(a.nle)+ncol(a.ie)} with the correlations between exogenous constructs (linear, nonlinear, and interaction effects).}}

\author{Alba Martinez-Ruiz <amartine@ucsc.cl>}
	
\seealso{\code{\link{ErrEnLV}}, \code{\link{EnLVs}}, \code{\link{EnMVs}}, \code{\link{XexXen}}}

\examples{
N <- 500
n <- 250
\dontrun{
yexcor <- ExoLVsCor(N,n,intpar$bex,intpar$rie,yex$y.ex,nlie$a.nle,nlie$a.ie)
attributes(yexcor)}
}