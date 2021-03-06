% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/upload.R
\name{gcs_retry_upload}
\alias{gcs_retry_upload}
\title{Retry a resumeable upload}
\usage{
gcs_retry_upload(
  retry_object = NULL,
  upload_url = NULL,
  file = NULL,
  type = NULL
)
}
\arguments{
\item{retry_object}{A object of class \code{gcs_upload_retry}.}

\item{upload_url}{As created in a failed upload via \link{gcs_upload}}

\item{file}{The file location to upload}

\item{type}{The file type, guessed if NULL

Either supply a retry object, or the upload_url, file and type manually yourself.

The function will first check to see how much has been uploaded already, then try to send up
  the remaining bytes.}
}
\value{
If successful, an object metadata object, if not an gcs_upload_retry object.
}
\description{
Used internally in \link{gcs_upload}, you can also use this
  for failed uploads within one week of generating the upload URL
}
