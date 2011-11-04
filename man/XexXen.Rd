\name{XexXen}
\alias{XexXen}
\title{Simulated data}

\description{A function to create an array with simulated data.}

\usage{XexXen(N, n, ind.ex, ind.en, x.ex, x.en)}

\arguments{
  \item{N}{The number of data sets.}
  \item{n}{The sample size of each data set.}
  \item{ind.ex}{The total number of manifest variables of exogenous constructs.}
  \item{ind.en}{The total number of manifest variables of endogenous constructs.}
  \item{x.ex}{An array with \code{N} matrices of dimension \code{n} times \code{ind.ex} with the scores of manifest variables.}
  \item{x.en}{An array with \code{N} matrices of dimension \code{n} times \code{ind.en} with the scores of manifest variables.}
}

\value{\item{x}{An array with \code{N} matrices of dimension \code{n} times \code{ind.ex + ind.en} with the scores of manifest variables.}}

\author{Alba Martinez-Ruiz <amartine@ucsc.cl>}

\examples{
N <- 500
n <- 250
\dontrun{
x <- XexXen(N,n,intpar$ind.ex,intpar$ind.en,xex$x.ex,xen$x.en)
attributes(x)
x <- x$x}
}