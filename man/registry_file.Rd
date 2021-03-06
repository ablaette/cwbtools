% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/registry_file.R
\name{registry_file_parse}
\alias{registry_file_parse}
\alias{registry_file_compose}
\alias{registry_data}
\alias{registry_file_write}
\title{Parse and create registry files.}
\usage{
registry_file_parse(corpus, registry_dir = Sys.getenv("CORPUS_REGISTRY"))

registry_file_compose(x)

registry_data(
  name,
  id,
  home,
  info = file.path(home, ".info", fsep = "/"),
  properties = c(charset = "utf-8"),
  p_attributes,
  s_attributes = character()
)

registry_file_write(
  data,
  corpus,
  registry_dir = Sys.getenv("CORPUS_REGISTRY"),
  ...
)
}
\arguments{
\item{corpus}{A CWB corpus indicated by a length-one \code{character} vector.}

\item{registry_dir}{Directory with registry files.}

\item{x}{An object of class \code{registry_data}.}

\item{name}{Long descriptive name of corpus (\code{character} vector).}

\item{id}{Short name of corpus (\code{character} vector).}

\item{home}{Path with data directory for indexed corpus.}

\item{info}{A \code{character} vector containing path name of info file.}

\item{properties}{Named \code{character} vector with corpus properties,
should at least include 'charset'.}

\item{p_attributes}{A \code{character} vector with positional attributes to
declare.}

\item{s_attributes}{A \code{character} vector with structural attributes to
declare.}

\item{data}{A \code{registry_data} object.}

\item{...}{further parameters}
}
\description{
A set of functions to parse, create and write registry files.
}
\details{
\code{registry_file_parse} will return an object of class \code{registry_data}.

See the appendix to the 'Corpus Encoding Tutorial'
(http://cwb.sourceforge.net/files/CWB_Encoding_Tutorial.pdf), which includes an
explanation of the registry file format.

\code{registry_file_compose} will turn an
  \code{registry_data}-object into a character vector with a registry file
  that can be written to disk.

\code{registry_file_write} will compose a registry file from
  \code{data} and write it to disk.
}
\examples{
regdata <- registry_file_parse(
  corpus = "REUTERS",
  registry_dir = system.file(package = "RcppCWB", "extdata", "cwb", "registry")
  )
}
