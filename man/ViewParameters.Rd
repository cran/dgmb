\name{ViewParameters}
\alias{ViewParameters}
\title{A dialog box to display parameters}

\description{A function to display a dialog box with simulation parameters.}

\usage{ViewParameters(tkl, tkr)}

\arguments{
  \item{tkl}{An instance of tkcombobox}
  \item{tkr}{An instance of tkradiobutton}
}

\references{Dalgaard's Peter (2002) \emph{Rnews: The Newsletter of the R Project}, Vol. 3.} 

\author{Claudia Martinez-Araneda <cmartinez@ucsc.cl>}

\examples{
ViewParameters <- function(tkl,tkr){

 rb<- tclvalue(tkr)
 ll<- as.numeric(tclvalue(tcl(tkl,"getvalue")))
 msg<-paste("")
 
 if  (rb == 1) #all outer weights equal
 {
 if (as.integer(ll)==0)
   {
          msg<-paste(msg,"path.coef <- c(0.5,0.4,0.3,0,0.3,0,0.3,0,0)\n")
          msg<-paste(msg,"wei.ex <- matrix (c(0.63,0.63,\n\t\t    
                                    0.63,0.63,\n\t\t
                                    0.63,0.63),3,2,byrow=TRUE)\n")
          msg<-paste(msg,"wei.en <- matrix(c(0.63,0.63),1,2,byrow=TRUE),3,2,byrow=TRUE)")
   }
  if (as.integer(ll)==1)
   {
          msg<-paste(msg,"path. coef <- c(0.5,0.4,0.3,0,0.3,0,0.3,0,0)\n")
          msg<-paste(msg,"wei.ex <- matrix (c(0.42,0.42,0.42,0.42,\n\t\t
                                    0.42,0.42,0.42,0.42,\n\t\t
                                    0.42,0.42,0.42,0.42),3,4,byrow=TRUE)\n")
          msg<-paste(msg,"wei.en <- matrix(c(0.42,0.42,0.42,0.42),1,4,byrow=TRUE)\n")
   }
  if (as.integer(ll)==2)
   {
          msg<-paste(msg,"path. coef <- c(0.5,0.4,0.3,0,0.3,0,0.3,0,0)\n")
          msg<-paste(msg,"wei.ex <- matrix (c(0.35,0.35,0.35,0.35,0.35,0.35,\n\t\t
                                    0.35,0.35,0.35,0.35,0.35,0.35,\n\t\t
                                    0.35,0.35,0.35,0.35,0.35,0.35),
                                    3,6,byrow=TRUE),3,2,byrow=TRUE)\n")
          msg<-paste(msg,"wei.en <- matrix(c(0.35,0.35,0.35,0.35,0.35,0.35),
                                    1,6,byrow=TRUE)")
   }
  if (as.integer(ll)==3)
   {
          msg<-paste(msg,"path. coef <- c(0.5,0.4,0.3,0,0.3,0,0.3,0,0)\n")
          msg<-paste(msg,"wei.ex <- matrix (c(0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,\n\t\t
                                    0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,\n\t\t
                                    0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3),
                                    3,8,byrow=TRUE)\n")
          msg<-paste(msg,"wei.en <- matrix(c(0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3),
                                    1,8,byrow=TRUE)")
   }
 }else{#all outer weights different
    if (as.integer(ll)==0)
    {
          msg<-paste(msg,"path.coef <- c(0.5,0.4,0.3,0,0.3,0,0.3,0,0)\n")
          msg<-paste(msg,"wei.ex <- matrix(c(0.8,0.4,\n\t\t
                                    0.4,0.8,\n\t\t0.1,0.9),3,2,byrow=TRUE)\n")
          msg<-paste(msg,"wei.en <- matrix(c(0.4,0.8),1,2,byrow=TRUE)")
    }
    if (as.integer(ll)==1)
    {
          msg<-paste(msg,"path. coef <- c(0.5,0.4,0.3,0,0.3,0,0.3,0,0)\n")
          msg<-paste(msg,"wei.ex <- matrix(c(0.2,0.3,0.5,0.7\n\t\t
                                    0.2,0.4,0.6,0.5\n\t\t
                                    0.3,0.5,0.7,0.2),3,4,byrow=TRUE)\n")
          msg<-paste(msg,"wei.en <- matrix(c(0.2,0.3,0.5,0.5),1,4,byrow=TRUE)\n")
     }
    if (as.integer(ll)==2)
     {
          msg<-paste(msg,"path. coef <- c(0.5,0.4,0.3,0,0.3,0,0.3,0,0)\n")
          msg<-paste(msg,"wei.ex <- matrix(c(0.5,0.3,0.4,0.3,0.5,0.1,\n\t\t
                                    0.2,0.4,0.6,0.4,0.2,0.3,\n\t\t
                                    0.3,0.6,0.2,0.3,0.4,0.2),3,6,byrow=TRUE)\n")
          msg<-paste(msg,"wei.en <- matrix(c(0.5,0.3,0.4,0.3,0.5,0.1),1,6,byrow=TRUE)")
     }
  if (as.integer(ll)==3)  {

          msg<-paste(msg,"path. coef <- c(0.5,0.4,0.3,0,0.3,0,0.3,0,0)\n")
          msg<-paste(msg,"wei.ex <- matrix(c(0.3,0.3,0.4,0.3,0.4,0.3,0.2,0.3,\n\t\t
                                    0.3,0.3,0.4,0.3,0.2,0.3,0.4,0.2,\n\t\t
                                    0.4,0.5,0.4,0.3,0.2,0.1,0.3,0.2),
                                    3,8,byrow=TRUE)\n")
          msg<-paste(msg,"wei.en <- matrix(c(0.3,0.3,0.4,0.3,0.4,0.3,0.2,0.3),
                                    1,8,byrow=TRUE)")
    }
  }
  tkmessageBox(title="Fixed Parameters", message=paste(msg, "\n Distribution = Normal"), 
               icon="info", type="ok")

}#End ViewParameters
}

\keyword{tcltk}
\keyword{tkcombobox}
\keyword{tkradiobutton}
