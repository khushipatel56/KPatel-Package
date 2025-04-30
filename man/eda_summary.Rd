\name{eda_summary}
\alias{eda_summary}
\title{Exploratory Data Summary}
\description{
Provides summary statistics and structure of a dataset.
}
\usage{
eda_summary(data)
}
\arguments{
  \item{data}{A data frame to be summarized.}
}
\value{
A list containing:
  \itemize{
    \item{\code{summary}}{ — Summary statistics of each column (from \code{summary()}).}
    \item{\code{structure}}{ — Structure of the dataset as a character vector (from \code{str()}, captured using \code{capture.output()}).}
  }
}
\details{
This function performs basic exploratory data analysis by returning both summary statistics and structural information about the input data frame. It is useful for quickly understanding the contents and data types of a dataset.
}
\examples{
df <- data.frame(age = c(25, 30, 45), gender = c("M", "F", "M"))
result <- eda_summary(df)
print(result$summary)
cat(result$structure, sep = "\n")
}
\author{
Khushi Patel
}
