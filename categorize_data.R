# categorize_data.R
#' @title Categorize Data Column
#' @description Categorizes a numeric column into labeled bins.
#' @param data A data frame.
#' @param column The name of the column to categorize.
#' @param bins A numeric vector specifying breakpoints.
#' @param labels A character vector of labels for the categories.
#' @return A modified data frame with a new categorized column.
#' @export
categorize_data <- function(data, column, bins, labels) {
  cat_col <- paste0(column, "_category")
  data[[cat_col]] <- cut(data[[column]], breaks = bins, labels = labels, include.lowest = TRUE)
  return(data)
}
