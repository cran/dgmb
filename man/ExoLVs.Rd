\name{ExoLVs}
\alias{ExoLVs}
\title{Calculating exogenous constructs}

\description{A function to calculate exogenous constructs.}

\usage{ExoLVs(N, n, bv, bex, x.ex, weiex)}

\arguments{
  \item{N}{The number of data sets.}
  \item{n}{The sample size of each data set.}
  \item{bv}{A vector with the number of manifest variables per construct.}
  \item{bex}{The number of exogenous constructs.}
  \item{x.ex}{An array of \code{N} matrices of dimension \code{n} times \code{ind.ex} with the scores of manifest variables.}
  \item{weiex}{A matrix with the true values of outer weights. Each row gives the true values for a measurement model.}}
  
\value{\item{y.ex}{An array with \code{N} matrices of dimension \code{n} times \code{bex} with the scores of exogenous constructs.}}

\author{Alba Martinez-Ruiz <amartine@ucsc.cl>}

\seealso{\code{\link{NIEffects}}, \code{\link{ExoLVsCor}}, \code{\link{ErrEnLV}}, \code{\link{EnLVs}}, \code{\link{EnMVs}}, \code{\link{XexXen}}}

\examples{
N <- 500
n <- 250
bv <- c(2,2,2,2)
\dontrun{
yex <- ExoLVs(N,n,bv,intpar$bex,xex$x.ex,wei.ex) 
attributes(yex)}
}
