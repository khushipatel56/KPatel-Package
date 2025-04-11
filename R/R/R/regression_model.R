#' Linear Regression Model
#'
#' Fits a linear regression model and returns a summary.
#'
#' @param formula A formula like y ~ x1 + x2.
#' @param data The data frame.
#' @return Summary of the linear model.
#' @examples
#' regression_model(mpg ~ wt + hp, data = mtcars)
#' @export
regression_model <- function(formula, data) {
  model <- lm(formula, data = data)
  summary(model)
}
