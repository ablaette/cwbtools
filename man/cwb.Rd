% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cwb.R
\name{cwb_install}
\alias{cwb_install}
\alias{cwb_get_url}
\alias{cwb_get_bindir}
\alias{cwb_is_installed}
\title{Utilities to install Corpus Workbench.}
\usage{
cwb_install(url_cwb = cwb_get_url())

cwb_get_url()

cwb_get_bindir()

cwb_is_installed()
}
\arguments{
\item{url_cwb}{The URL from where the CWB can be downloaded.}
}
\description{
Some steps for encoding corpora can be performed by calling CWB utilities
from the command line, which requires an installation of the CWB, either as
part of the CWB package, or using the default installation location of the
CWB.
}
\details{
\code{cwb_get_url} will return the URL for downloading the
  appropriate binary (Linux / macOS / Windows) of the Corpus Workbench.

\code{cwb_get_bindir} will return the directory where the cwb
  utility programs reside. If \code{cwb_install()} has been used to install
  the CWB, the function returns the directory within the \code{cwbtools}
  package. Alternatively, a check for a local installation is performed.

\code{cwb_is_installed} will check whether the CWB is installed.
}
