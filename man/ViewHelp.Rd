\name{ViewHelp}
\alias{ViewHelp}
\title{Viewing help files in pdf format}
\description{A function to view the help files.}

\usage{ViewHelp()}

\value{A file:                        
	\item{pdf file}{A help file including the description of the main functions of the dgmb-package.}}

\references{Dalgaard's Peter (2002) \emph{Rnews: The Newsletter of the R Project}, Vol. 3.}

\author{Claudia Martinez-Araneda <cmartinez@ucsc.cl>}

\seealso{ \code{<tcltk> package}}

\examples{

ViewHelp <- function()
{
helpfile<-paste(find.package("dgmb",verbose = verbose))
helpfile<-substring(helpfile,1,nchar(helpfile))
helpfile<-paste(helpfile,"/docs/dgmb-manual.pdf")
helpfile<-sub("dgmb ","dgmb", helpfile)
cat ("Viewing dgmb help...if nothing happens, you should write help(dgmb) in R console\n")
browseURL(helpfile)
}
}

\keyword{tcltk}
