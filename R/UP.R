#' UP: Universal Prediction Distribution
#' 
#' \code{UP} is a package that provides universal method for surrogate models: A package with extensible options and various 
#' UP-based algorithms for optimization, refienment and inversion. 
#' 
#' @section Introduction:
#' 
#' Universal Prediction Distribution for surrogate models is an efficient too for adaptive designs. It allows the extension
#' of many algorithms defined for the Gaussian case for all types of surrogates
#' 
#' @section UP Distribution:
#' 
#' \code{UP}  of a surogate model is given by the prediction of its submodels defined by a resampling technique. 
#' 
#' 
#' @section Methods:
#' 
#' The package also contains several algorihms that uses the UP distribution such as:
#'  \code{\link{upego}},   \code{\link{upsmart}},  \code{\link{upinverse}} and \code{\link{ga}} 
#' model selection.
#' 
#' 
#' 
#' 
#' 
#' @section Applications:
#' 
#' \code{UP} applications are diverse. We can cite  mainely: sequential sampling, optimization and model selection.
#' \code{UP}is always useful when one uses surrogate modeling paradigm.
#' 
#' 
#'
#' @examples
#' 
#' library(UP)
#' x           <- as.matrix(c(-2.6,-0.2, 1.7,-1.4,1.2,3))
#' y           <- c(0.8, 0.5, 0.1, 0.3, 0, 0.4)
#' xverif      <- seq(-3, 3, length.out =300)
#' krig        <- krigingsm$new()
#' resampling  <- UPClass$new(x, y, Scale =TRUE) 
#' upsm        <- UPSM$new(sm= krig, UP= resampling) 
#' prediction  <- upsm$uppredict(xverif)
#' plotUP1D(xverif, prediction, x, y)
#' 
#' @seealso \code{\link{UP}}
# @seealso For more details, see the \code{data.tree} vignette by running: \code{vignette("data.tree")}
#' @docType package
#' @name UP
NULL
