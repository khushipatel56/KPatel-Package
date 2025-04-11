#' Hypothesis Test (t-test)
#'
#' Performs a two-sample t-test.
#'
#' @param x A numeric vector for group 1.
#' @param y A numeric vector for group 2.
#' @return Result of t-test.
#' @examples
#' hypothesis_test(mtcars$mpg[mtcars$am == 0], mtcars$mpg[mtcars$am == 1])
#' @export
hypothesis_test <- function(x, y) {
  t.test(x, y)
}
