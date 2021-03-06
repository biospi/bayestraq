% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fdr.R
\name{fdr_ash}
\alias{fdr_ash}
\title{False Discovery Rate correction with ash}
\usage{
fdr_ash(fit, data = protein_de(fit), by.model = T, by.effect = T,
  as.data.table = FALSE, use.df = TRUE, min.peptides = 1,
  min.peptides.per.condition = 0, min.features = 1,
  min.features.per.condition = 0, min.test.samples = 4,
  min.test.samples.per.condition = 2, min.real.samples = 1,
  min.real.samples.per.condition = 0, mixcompdist = "halfuniform", ...)
}
\description{
False Discovery Rate correction with ash
}
