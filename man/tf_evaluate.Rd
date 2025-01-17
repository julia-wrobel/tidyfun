% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/evaluate.R
\name{tf_evaluate}
\alias{tf_evaluate}
\alias{tf_evaluate.tfd}
\alias{tf_evaluate.tfb}
\alias{tf_evaluate.data.frame}
\title{Evaluate \code{tf}s, both inside or outside a \code{data.frame}}
\usage{
tf_evaluate(object, arg, ...)

\method{tf_evaluate}{tfd}(object, arg, ...)

\method{tf_evaluate}{tfb}(object, arg, ...)

\method{tf_evaluate}{data.frame}(object, arg, ...)
}
\arguments{
\item{object}{an \code{tf} or a \code{data.frame}-like object with \code{tf} columns}

\item{arg}{optional evaluation grid, defaults to \code{tf_arg(object)}.}

\item{...}{optional:  A selection of columns. If empty, all \code{tf}-variables
are selected. You can supply bare variable names,
select all variables between \code{x} and \code{z} with \code{x:z}, exclude \code{y} with \code{-y}.
For more options, see the \code{\link[dplyr:select]{dplyr::select()}} documentation.}
}
\value{
For \code{tf}-objects, a list of numeric vectors containing the function
evaluations. For data frames, replaces \code{tf}-columns with list columns of
smaller \code{data.frames} containing the functions' arguments (\code{arg}) and
evaluations (\code{value}).
}
\description{
Evaluate \code{tf}s, both inside or outside a \code{data.frame}
}
\details{
The \code{arg}-argument of \code{tf_evaluate.data.frame} method can be a
list of \code{arg}-vectors or -lists used as the \code{arg} argument for the
\code{\link[=tf_evaluate]{tf_evaluate()}}-method for the respective \code{tf}-columns in \code{object}.
}
\seealso{
This is used internally by \code{[.tf} to evaluate \code{object}.
}
