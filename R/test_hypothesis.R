# test_hypothesis.R
#' @title Hypothesis Testing
#' @description Performs t-test or chi-square test on two variables.
#' @param data A data frame.
#' @param var1 First variable name.
#' @param var2 Second variable name.
#' @param test_type Type of test: "t.test" or "chisq.test".
#' @return The result of the statistical test.
#' @export
test_hypothesis <- function(data, var1, var2, test_type = "t.test") {
  if (test_type == "t.test") {
    return(t.test(data[[var1]], data[[var2]]))
  } else if (test_type == "chisq.test") {
    return(chisq.test(table(data[[var1]], data[[var2]])))
  } else {
    stop("Unsupported test type. Choose 't.test' or 'chisq.test'.")
  }
}
