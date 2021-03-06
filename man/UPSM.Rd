% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/UPSM.R
\docType{class}
\name{UPSM}
\alias{UPSM}
\title{UPSM is a class for universal distribution of a surrogate model}
\format{An \code{\link{R6Class}} generator object}
\usage{
UPSM
}
\description{
\code{UPSM} is a class for a surrogate model 
ready to be used in a UP framework.
}
\details{
It contains a surrogate model and a UPClass. 
The UPSM sets the set of submodels and perform UP predictions.
}
\section{Fields}{

\describe{
\item{\code{sm:}}{a surrogate model of class \code{sm}}

\item{\code{UP:}}{a class \code{UPClass}}

\item{\code{submodels:}}{list of submodels}
}}
\section{Methods}{
 
\describe{
  \item{\code{UPSM$new(sm = NULL, UP=NULL)}}{Creates a new \code{UPSM} object, 
                 and intialize the submodels. }
  \item{\code{uppredict(newData)}}{The UP prediction of the new data.}
}
}
\examples{

library(UP)
d          	<- 2
n           	<- 16
testdata    	<- expand.grid(x1=s <- seq(0,1, length=10), x2=s)
X    		    <- expand.grid(x1=seq(0,1,length=5), x2=seq(0,1,length=4))
y        	  <- apply(X, 1, branin)
upsm     	  <- UPSM$new(sm= krigingsm$new(), UP=UPClass$new(X,y,Scale =TRUE))
predictions  <- upsm$uppredict(testdata)


}
\keyword{datasets}

