# train_model.R
#' @title Train Predictive Model
#' @description Trains a model using the caret package with optional tuning.
#' @param formula A formula for model training.
#' @param data A data frame for training.
#' @param method Machine learning method (e.g., "lm", "rf").
#' @param tuneGrid Optional tuning grid.
#' @return A trained model object.
#' @export
train_model <- function(formula, data, method = "lm", tuneGrid = NULL) {
  model <- caret::train(formula, data = data, method = method, tuneGrid = tuneGrid)
  return(model)
}
