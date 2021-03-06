% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/queries.R
\name{get_patients}
\alias{get_patients}
\title{get_patients}
\usage{
get_patients(num = NULL, num_type = NULL, only_num = FALSE,
  count = FALSE, config = NULL)
}
\arguments{
\item{num}{the identifier of the cohort/num_temp}

\item{num_type}{type of num: one of c('num_temp', 'cohorte')}

\item{only_num}{set to `TRUE` if you only need the patient_nums (default = `FALSE`)}

\item{count}{set to `TRUE` if you want to return the count of unique concepts for the patients
contained in a precomputed table named 'NEU_CONCEPT_COUNT'}
}
\description{
For i2b2 and Dr.Warehouse
Get the demographic informations of the patients in a cohort/num_temp.
}
