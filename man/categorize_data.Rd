\name{categorize_data}
\alias{categorize_data}
\title{Categorize Data Column}
\description{
Categorizes a numeric column into labeled bins.
}
\usage{
categorize_data(data, column, bins, labels)
}
\arguments{
  \item{data}{A data frame containing the column to be categorized.}
  \item{column}{The name (as a string) of the numeric column to categorize.}
  \item{bins}{A numeric vector specifying the breakpoints for binning.}
  \item{labels}{A character vector of category labels for each bin.}
}
\value{
A modified data frame that includes a new column with categorical values based on the specified bins and labels.
}
\details{
This function uses \code{cut()} to divide a numeric column into discrete categories defined by the \code{bins} and \code{labels} arguments. The new column is appended to the original data frame with a name in the format \code{"<column>_category"}.
}
\examples{
df <- data.frame(score = c(45, 67, 89, 55, 73))
bins <- c(0, 50, 70, 100)
labels <- c("Low", "Medium", "High")
categorized_df <- categorize_data(df, "score", bins, labels)
print(categorized_df)
}
\author{
Khushi Patel
}
