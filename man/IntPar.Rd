\name{IntPar}
\alias{IntPar}
\title{Calculating internal parameters}

\description{A function to compute internal parameters.}

\usage{IntPar(rs, rie, modo, bv)}

\arguments{
  \item{rs}{A binary matrix specifying the structural relationships between constructs.}
  \item{rie}{A binary matrix specifying nonlinear and interaction effects on the endogenous construct.} 
  \item{modo}{A vector with the mode of each block of variables. "F" for formative measurement models or Mode B in PLS structural models.}
  \item{bv}{A vector with the number of manifest variables per construct.}}

%\details{If necessary, more details than the description above}

\value{A list with the following components:
	\item{nat}{A vector with the nature of each construct, exogenous ("ex") or endogenous ("en").}
	\item{bex}{The number of exogenous constructs.}
	\item{ben}{The number of endogenous constructs.}
	\item{ind.ex}{The total number of manifest variables of exogenous constructs.}
	\item{ind.en}{The total number of manifest variables of endogenous constructs.}}

% \references{put references to the literature/web site here}

\author{Alba Martinez-Ruiz <amartine@ucsc.cl>}

\seealso{\code{\link{dgmb}}, \code{\link{dgmbGui}}, \code{\link{ExoMVs}}, \code{\link{ExoLVs}}, \code{\link{NIEffects}}, \code{\link{ExoLVsCor}}, \code{\link{ErrEnLV}}, \code{\link{EnLVs}}, \code{\link{EnMVs}}, \code{\link{XexXen}}}

\examples{
r.s <- matrix(c(0,0,0,1,
                0,0,0,1,
                0,0,0,1,
                1,1,1,0),4,4,byrow=TRUE)
		   
r.ie <- matrix(c(0,0,1,				
                 0,1,0,				
                 1,0,0),3,3,byrow=TRUE)

modo <- c("F","F","F","F")

bv <- c(2,2,2,2)

intpar <- IntPar(r.s,r.ie,modo,bv)

attributes(intpar)
}