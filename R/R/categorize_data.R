#' Categorize Continuous Variable
#'
#' Converts a numeric vector into labeled categories using quantiles.
#'
#' @param x A numeric vector.
#' @param labels A character vector of labels for categories.
#' @return A factor with categories.
#' @examples
#' categorize_data(mtcars$mpg, labels = c("Low", "Medium", "High"))
#' @export
categorize_data <- function(x, labels = c("Low", "Medium", "High")) {
  cut(x, breaks = quantile(x, probs = seq(0, 1, length.out = length(labels) + 1), na.rm = TRUE),
      include.lowest = TRUE, labels = labels)
}
