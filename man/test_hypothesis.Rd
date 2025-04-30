\name{test_hypothesis}
\alias{test_hypothesis}
\title{Hypothesis Testing}
\description{
Performs t-test or chi-square test on two variables.
}
\usage{
test_hypothesis(data, var1, var2, test_type = "t.test")
}
\arguments{
  \item{data}{A data frame containing the variables to test.}
  \item{var1}{The name (as a string) of the first variable.}
  \item{var2}{The name (as a string) of the second variable.}
  \item{test_type}{Type of hypothesis test to perform: either \code{"t.test"} or \code{"chisq.test"}.}
}
\value{
The result of the specified hypothesis test, either an object of class \code{htest} from \code{t.test()} or \code{chisq.test()}.
}
\details{
This function conducts a basic hypothesis test between two variables. A t-test is used for comparing means between two numeric variables. A chi-square test is used for testing independence between two categorical variables.

It automatically constructs a contingency table for the chi-square test using \code{table()}.
}
\examples{
df <- data.frame(
  group = c("A", "A", "B", "B"),
  value = c(10, 12, 15, 14),
  category = c("X", "Y", "X", "Y")
)

# t-test example
test_hypothesis(df, "value", "value", test_type = "t.test")

# chi-square test example
test_hypothesis(df, "group", "category", test_type = "chisq.test")
}
\author{
Your Name
}
