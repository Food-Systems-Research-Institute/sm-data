% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_fips.R
\name{filter_fips}
\alias{filter_fips}
\title{Filter metrics df by FIPS code}
\usage{
filter_fips(
  df,
  scope = c("all", "counties", "new", "old", "states", "us"),
  fips_col = "fips"
)
}
\arguments{
\item{df}{A long-format metrics df.}

\item{scope}{Method by which FIPS codes are filtered. \code{all} = all states and
any county in New England. \code{counties} = any county in New England. This includes
Connecticut's old county system and new governance region system. \code{new} = all counties in New
England, but only Connecticut's new governance region system (n = 68).
\code{old} = all counties in New England, but only Connecticut's old county system (n = 67).}

\item{fips_col}{column specifying fips code.}
}
\value{
A data.frame with filters applied.
}
\description{
Conveniently filter a long-format metrics df by FIPS code.
}
\examples{
data(metrics_example)
filter_fips(metrics_example, scope = 'all')
}
