#' Interactive applet for term selection and setting nonlinear parameters to
#' fit data with sines and cosines.
#' 
#' Displays data and a menu of modeling functions.  Finds a linear combination
#' of the selected modeling functions, with the user setting nonlinear
#' parameters manually. A wrapper for \code{mFit}, see \code{mFit} for more
#' details.
#' 
#' A premade wrapper for \code{mFit} such that only the constant, x, and the
#' sine and cosine terms are displayed. See \code{mFit} for more details.
#' 
#' @param expr A formula object giving the dependent and independent variables
#' to use.
#' @param data A data frame containing the values for the variables identified
#' in \code{expr}.
#' @param ... Additional arguments to be passed to \code{mFit}
#' @return A function that implements the current state of the parameters and
#' terms selected.
#' @author Andrew Rich (\email{andrew.joseph.rich@@gmail.com}) and Daniel
#' Kaplan (\email{kaplan@@macalester.edu})
#' @keywords calculus
#' @examples
#' 
#' 	if(require(manipulate)){
#' 		fetchData("hawaii.csv")-> hawaii
#' 		mFitSigmoidal(water~time, data=hawaii)
#' 		hawaii=fetchData("hawaii.csv")
#' 		mFitSines(water~time, data=hawaii)
#' 	}
#' 
mFitSines=function(expr, data, ...){
  instruct=c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE,FALSE,FALSE,FALSE,
             FALSE,FALSE,TRUE,TRUE)
  mFit(expr, data, instructor=instruct, ...)
}
