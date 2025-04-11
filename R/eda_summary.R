# eda_summary.R
#' @title Exploratory Data Summary
#' @description Provides summary statistics and structure of a dataset.
#' @param data A data frame.
#' @return A list containing summary and structure.
#' @export
eda_summary <- function(data) {
  summary_stats <- summary(data)
  structure_info <- capture.output(str(data))
  return(list(summary = summary_stats, structure = structure_info))
}
