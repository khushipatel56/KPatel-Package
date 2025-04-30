\name{train_model}
\alias{train_model}
\title{Train Predictive Model}
\description{
Trains a model using the \code{caret} package with optional tuning parameters.
}
\usage{
train_model(formula, data, method = "lm", tuneGrid = NULL)
}
\arguments{
  \item{formula}{A formula specifying the model (e.g., \code{y ~ x1 + x2}).}
  \item{data}{A data frame used for training the model.}
  \item{method}{Machine learning algorithm to use (e.g., \code{"lm"}, \code{"rf"}, \code{"svmRadial"}). Default is \code{"lm"}.}
  \item{tuneGrid}{An optional data frame with parameters to tune. Passed to \code{caret::train()}.}
}
\value{
A trained model object as returned by \code{caret::train()}.
}
\details{
This function provides a wrapper around \code{caret::train()} for easy model training. It supports many methods available in the \code{caret} package and allows optional hyperparameter tuning via the \code{tuneGrid} argument.
}
\examples{
library(caret)
data(mtcars)
model <- train_model(mpg ~ cyl + hp, data = mtcars, method = "lm")
summary(model)
}
\author{
Khushi Patel
}
