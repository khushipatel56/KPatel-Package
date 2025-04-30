\name{visualize_data}
\alias{visualize_data}
\title{Visualize Data}
\description{
Creates custom visualizations using \code{ggplot2}.
}
\usage{
visualize_data(data, x, y = NULL, color = NULL, type = "scatter")
}
\arguments{
  \item{data}{A data frame containing the variables to plot.}
  \item{x}{The name of the variable to map to the x-axis.}
  \item{y}{(Optional) The name of the variable to map to the y-axis (required for scatter and boxplot).}
  \item{color}{(Optional) The name of the variable for color grouping.}
  \item{type}{Type of plot to generate: \code{"scatter"}, \code{"bar"}, or \code{"boxplot"}. Default is \code{"scatter"}.}
}
\value{
A \code{ggplot} object representing the generated plot.
}
\details{
This function dynamically constructs a plot based on the input type. It uses \code{aes_string()} for flexible mapping of aesthetics from character arguments. It supports:
  \itemize{
    \item Scatter plots via \code{geom_point()}
    \item Bar plots via \code{geom_bar()}
    \item Boxplots via \code{geom_boxplot()}
  }
All plots use a minimal theme.
}
\examples{
library(ggplot2)

# Scatter plot
visualize_data(mtcars, x = "wt", y = "mpg", color = "cyl", type = "scatter")

# Bar plot
visualize_data(mtcars, x = "cyl", color = "gear", type = "bar")

# Boxplot
visualize_data(mtcars, x = "cyl", y = "mpg", color = "gear", type = "boxplot")
}
\author{
Khushi Patel
}
