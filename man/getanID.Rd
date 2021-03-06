\name{getanID}
\alias{getanID}
\title{Add an "id" variable to a dataset}
\usage{
  getanID(data, id.vars)
}
\arguments{
  \item{data}{The input \code{data.frame}.}

  \item{id.vars}{The variables that should be treated as ID
  variables.}
}
\value{
  The input \code{data.frame} if ID variables are unique or
  the input \code{data.frame} with a new \code{.id} column.
}
\description{
  Many functions will not work properly if there are
  duplicated ID variables in a dataset. This function is a
  convenience function for using \code{\link{ave}} and
  \code{\link{seq_along}} to create an \code{.id} variable
  that when used in conjunction with the existing ID
  variables, should be unique.
}
\examples{
mydf <- data.frame(IDA = c("a", "a", "a", "b", "b"),
                   IDB = c(1, 1, 1, 1, 1), values = 1:5)
mydf
getanID(mydf, c("IDA", "IDB"))

mydf <- data.frame(IDA = c("a", "a", "a", "b", "b"),
                   IDB = c(1, 2, 1, 1, 2), values = 1:5)
mydf
getanID(mydf, 1:2)

\dontshow{rm(mydf)}
}
\author{
  Ananda Mahto
}

