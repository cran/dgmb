\name{EnMVs}
\alias{EnMVs}
\title{Calculating manifest variables of endogenous constructs}

\description{A function to calculate manifest variables of endogenous constructs.}

\usage{EnMVs(N, n, ind.en, weien, y.en)}

\arguments{
  \item{N}{The number of data sets.}
  \item{n}{The sample size of each data set.}
  \item{ind.en}{The total number of manifest variables of endogenous constructs.}
  \item{weien}{A matrix with the true values of outer weights. Each row gives the true values for a measurement model.}
  \item{y.en}{An array with \code{N} matrices of dimension \code{n} times \code{ben} with the scores of endogenous constructs.}}

\value{\item{x.en}{An array with \code{N} matrices of dimension \code{n} times \code{ind.en} with the scores of manifest variables.}}

\author{Alba Martinez-Ruiz <amartine@ucsc.cl>}

\seealso{\code{\link{XexXen}}}

\examples{
N <- 500
n <- 250
\dontrun{
xen <- EnMVs(N,n,intpar$ind.en,wei.en,yen$y.en)
attributes(xen)}
}