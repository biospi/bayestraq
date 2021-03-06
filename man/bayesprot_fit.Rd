% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit.R
\name{bayesprot_fit}
\alias{bayesprot_fit}
\alias{start_parallel}
\alias{stop_parallel}
\alias{del}
\alias{control}
\alias{design}
\alias{features}
\alias{peptides}
\alias{proteins}
\alias{ref_assays}
\alias{norm_func}
\alias{dea_func}
\alias{fdr_func}
\alias{squeeze_var_func}
\alias{dist_var_func}
\alias{dist_mean_func}
\alias{summary.bayesprot_fit}
\alias{timings}
\alias{feature_vars}
\alias{peptide_vars}
\alias{assay_vars}
\alias{peptide_deviations}
\alias{protein_quants}
\alias{protein_de}
\alias{protein_fdr}
\title{Interrogating the \code{bayesprot} fit object}
\usage{
bayesprot_fit(dir = "bayesprot", quiet = FALSE, force = FALSE)

start_parallel(fit, nthread = control(fit)$nthread)

stop_parallel()

del(fit)

control(fit)

design(fit, as.data.table = F)

features(fit, as.data.table = FALSE)

peptides(fit, as.data.table = FALSE)

proteins(fit, as.data.table = FALSE)

ref_assays(fit, key = 1)

norm_func(fit, key = 1)

dea_func(fit, key = 1)

fdr_func(fit, key = 1)

squeeze_var_func(fit, key = 1)

dist_var_func(fit, key = 1)

dist_mean_func(fit, key = 1)

\method{summary}{bayesprot_fit}(fit, proteinID, stage = "")

timings(fit, stage = "", as.data.table = F)

feature_vars(fit, featureIDs = NULL, summary = TRUE, stage = "",
  chains = 1:control(fit)$model.nchain, as.data.table = FALSE)

peptide_vars(fit, peptideIDs = NULL, summary = TRUE, stage = "",
  chains = 1:control(fit)$model.nchain, as.data.table = FALSE)

assay_vars(fit, proteinIDs = NULL, summary = TRUE, stage = "",
  chains = 1:control(fit)$model.nchain, as.data.table = FALSE)

peptide_deviations(fit, peptideIDs = NULL, summary = TRUE,
  stage = "", chains = 1:control(fit)$model.nchain,
  as.data.table = FALSE)

protein_quants(fit, proteinIDs = NULL, summary = TRUE,
  norm.func.key = as.integer(summary),
  ref.assays.key = ifelse(is.null(norm.func.key), 1, norm.func.key),
  stage = "", chains = 1:control(fit)$model.nchain,
  as.data.table = FALSE)

protein_de(fit, proteinIDs = NULL, key = 1, dist.mean.func.key = key,
  norm.func.key = dist.mean.func.key, ref.assays.key = norm.func.key,
  as.data.table = FALSE)

protein_fdr(fit, proteinIDs = NULL, key = 1, dea.func.key = key,
  dist.mean.func.key = dea.func.key,
  norm.func.key = dist.mean.func.key, ref.assays.key = norm.func.key,
  as.data.table = FALSE)
}
\arguments{
\item{dir}{directory containing the \link{bayesprot} fit to read}

\item{fit}{\code{bayesprot_fit} object created by \code{bayesprot}.}
}
\description{
Get information from a \link{bayesprot} fit.
}
