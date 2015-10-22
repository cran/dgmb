\name{dgmbGui}
\alias{dgmbGui}
\title{Graphical user interface (GUI) for random data generation}

\description{A function to implement a graphical user interface (GUI) to fix simulation parameters.}

\usage{dgmbGui()}

\details{The following main window is displayed in R:
\cr
\cr
\figure{dgmbGui.png}{Options: width=0.5in}
\cr
\cr
\cr
Figure 1 Graphical user interface for random data generation
\cr

Functions are implemented to generate data for a specific model (Figure 2). The true model considers three formative exogenous constructs and one formative endogenous construct. Linear effects are specified in a binary matrix as well as nonlinear and interaction effects. The interface allows one to set the number of data sets or Monte Carlo replications and the sample size of each data set; it is advisable to consider a sample size equal to or higher than 100 observations. All the measurement models have to have the same number of manifest variables. Four options can be used: 2, 4, 6, and 8 indicators per construct.  
\cr
For each true model, two sets of true outer weights are available. The value of the outer effects may be equal in all measurement models or a set of different permissible values may be considered. Manifest variables are generated as random normal data.
\cr
\cr
\cr
\figure{modelPLSModeB.png}{Options: width=0.1in}
\cr
\cr
\cr
Figure 2 True structural and measurement models
}

\value{Two files:
  \item{text file}{A \code{.txt} file in ASCII format readable from R-project with \code{dget}.}
	\item{csv file}{A \code{.csv} file.}}

\author{Alba Martinez-Ruiz <amartine@ucsc.cl>, Claudia Martinez-Araneda <cmartinez@ucsc.cl>}
	
\references{
Chin, W. W., Marcolin, B. L., and Newsted, P. R. 2003. A partial least squares latent variable modeling approach for measuring interaction effects: Results from a Monte Carlo simulation study and an electronic-mail emotion/adoption study. \emph{Information Systems Research}, \bold{14}(\bold{2}), 189-217.

Dalgaard's Peter (2002) \emph{Rnews: The Newsletter of the R Project}, Vol. 3.

Hanafi, M. 2007. PLS path modeling: Computation of latent variables with the estimation mode B. \emph{Computational Statistics}, \bold{22}, 275-292.

Martinez-Ruiz, A., Aluja-Banet, T. (2013) Two-step PLS path modeling mode B: Nonlinear and interaction effects between formative constructs. In \emph{New Perspectives in Partial Least Squares and Related Methods}, eds H. Abdi, W. Chin, V. Esposito Vinzi, G. Russolillo, and L. Trinchera, Springer Proceedings in Mathematics and Statistics, volume \bold{56}, pp. 187-199.

R Development Core Team (2011).\emph{R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria.} ISBN 3-900051-07-0, \url{http://www.r-project.org/}

Tenenhaus, M., Esposito Vinzi, V., Chatelin, Y. M., and Lauro, C. 2005. PLS path modeling. \emph{Computational Statistics & Data Analysis}, \bold{48}, 159-205.
}

\seealso{\code{\link{dgmb}}, \code{\link{IntPar}}, \code{\link{ViewParameters}}, \code{\link{ToProcess}}, \code{<tcltk> package}}

\examples{
help(dgmb)
dgmbGui()
}

\keyword{GUI}
\keyword{tkwidget}
\keyword{tcltk}