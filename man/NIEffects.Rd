\name{NIEffects}
\alias{NIEffects}
\title{Calculating nonlinear and interaction effects}

\description{A function to calculate nonlinear and interaction effects.}

\usage{NIEffects(N, n, y.ex, rie)}

\arguments{
  \item{N}{The number of data sets.}
  \item{n}{The sample size of each data set.}
  \item{y.ex}{An array with \code{N} matrices of dimension \code{n} times \code{bex} with the scores of exogenous constructs.}
  \item{rie}{A binary matrix specifying nonlinear and interaction effects on the endogenous construct.}
}

\value{A list with the following components:
	\item{a.nle}{An array with \code{N} matrices of dimension \code{n} times \code{ncol(rie)} with the scores of nonlinear effects.}
	\item{a.ie}{An array with \code{N} matrices of dimension \code{n} times \code{ncol(rie)} with the scores of interaction effects.}}

\author{Alba Martinez-Ruiz <amartine@ucsc.cl>}	
	
\seealso{\code{\link{ExoLVsCor}}, \code{\link{ErrEnLV}}, \code{\link{EnLVs}}, \code{\link{EnMVs}}, \code{\link{XexXen}}}

\examples{
N <- 500
n <- 250
\dontrun{
nlie <- NIEffects(N,n,yex$y.ex,intpar$rie)
attributes(nlie)}
}

