\name{dgmb-package}
\alias{dgmb-package}
\alias{dgmb}
\docType{package}
\title{\code{dgmb} Simulating data for PLS structural models}

\description{A set of functions have been implemented to generate random data to perform Monte Carlo simulations on structural models with formative constructs (PLS-Mode-B models). The setup of the true model is very specific. It considers a simple structure with three formative exogenous constructs related to one formative endogenous construct. The routines take into account the interaction and nonlinear effects of the exogenous constructs on the endogenous constructs. 
\cr\cr
A graphical user interface allows one to fix the simulation parameters such as the number of replications, the sample size of each data set and the number of indicators for each block of variables. Using binary matrices, it is possible to set the structural relationships between constructs as well as nonlinear and interaction effects. A set of permissible outer weights and path coefficients is available to run the procedure and to obtain the data sets.}

\details{
\tabular{ll}{
Package: \tab dgmb\cr
Type: \tab Package\cr
Title: \tab Simulating data for PLS structural models\cr
Version: \tab 1.0\cr
Date: \tab 2011-11-04\cr
Depends: \tab abind, tcltk, MASS\cr
License: \tab GPL version 2 or newer\cr
LazyLoad: \tab yes\cr}}

\author{Alba Martinez-Ruiz <amartine@ucsc.cl>, Claudia Martinez-Araneda <cmartinez@ucsc.cl>}

\references{Chin, W. W., Marcolin, B. L., and Newsted, P. R. 2003. A partial least squares latent variable modeling approach for measuring interaction effects: Results from a Monte Carlo simulation study and an electronic-mail emotion/adoption study. \emph{Information Systems Research}, \bold{14}(\bold{2}), 189-217.

Dalgaard's Peter (2002) \emph{Rnews: The Newsletter of the R Project}, Vol. 3.

Hanafi, M. 2007. PLS path modeling: Computation of latent variables with the estimation mode B. \emph{Computational Statistics}, \bold{22}, 275-292.

R Development Core Team (2011).\emph{R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria.} ISBN 3-900051-07-0, \url{http://www.r-project.org/}

Tenenhaus, M., Esposito Vinzi, V., Chatelin, Y. M., and Lauro, C. 2005. PLS path modeling. \emph{Computational Statistics & Data Analysis}, \bold{48}, 159-205.}

\keyword{package}

\seealso{\code{\link{dgmbGui}}}

\examples{
dgmbGui()
help(dgmbGui)}
