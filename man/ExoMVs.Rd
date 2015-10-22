\name{ExoMVs}
\alias{ExoMVs}
\title{Calculating exogenous manifest variables}

\description{A function to calculate manifest variables of exogenous constructs.}

\usage{ExoMVs(N, n, ind.ex)}

\arguments{
  \item{N}{The number of data sets.}
  \item{n}{The sample size of each data set.}
  \item{ind.ex}{The total number of manifest variables of exogenous constructs.}}

\value{\item{x.ex}{An array with \code{N} matrices of dimension \code{n} times \code{ind.ex} with the scores of manifest variables.}}

\author{Alba Martinez-Ruiz <amartine@ucsc.cl>}

\seealso{ \code{\link{IntPar}}, \code{\link{ExoLVs}}, \code{\link{NIEffects}}, \code{\link{ExoLVsCor}}, \code{\link{ErrEnLV}}, \code{\link{EnLVs}}, \code{\link{EnMVs}}, \code{\link{XexXen}}}

\examples{
N <- 500
n <- 250
\dontrun{
xex <- ExoMVs(N,n,intpar$ind.ex)
attributes(xex)}
}