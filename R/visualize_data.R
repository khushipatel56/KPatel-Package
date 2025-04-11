# visualize_data.R
#' @title Visualize Data
#' @description Creates custom visualizations using ggplot2.
#' @param data A data frame.
#' @param x X-axis variable.
#' @param y Y-axis variable (if applicable).
#' @param color Optional color grouping.
#' @param type Type of plot: "scatter", "bar", or "boxplot".
#' @return A ggplot object.
#' @export
visualize_data <- function(data, x, y = NULL, color = NULL, type = "scatter") {
  if (type == "scatter") {
    p <- ggplot(data, aes_string(x = x, y = y, color = color)) +
      geom_point() +
      theme_minimal()
  } else if (type == "bar") {
    p <- ggplot(data, aes_string(x = x, fill = color)) +
      geom_bar(position = "dodge") +
      theme_minimal()
  } else if (type == "boxplot") {
    p <- ggplot(data, aes_string(x = x, y = y, fill = color)) +
      geom_boxplot() +
      theme_minimal()
  } else {
    stop("Unsupported plot type")
  }
  return(p)
}
