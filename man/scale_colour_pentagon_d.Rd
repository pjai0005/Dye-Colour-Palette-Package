% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discrete-scale.R
\name{scale_colour_pentagon_d}
\alias{scale_colour_pentagon_d}
\title{Color Scales for Discrete Variables:}
\usage{
scale_colour_pentagon_d (
primary = "Punky Orange",
other = "Mulberry Wine",
direction=1,
...)
}
\arguments{
\item{primary}{a character vector to choose a color from the palette. The primary color's default value is Punky Orange}

\item{other}{a character vector to choose a color from the palette. The default value is Mulberry Wine}

\item{direction}{a numeric value to set the level of the scale. The default value is 1. If direction is < 0 , the palette switches from high and low}

\item{...}{Other parameters that support the scale_colour_discrete function}
}
\description{
\code{scale_colour_pentagon_d } It is a color scales used with ggplot2 for discrete data values mapped on the color aesthetic of Visualization in R. It chooses the Pentagon Palette which consists of 5 colors. The level of the color scale can be changed using the \code{direction}.
}
\details{
The package has 5 vibrant colors to match the different types of dyes.
}
\examples{
# Data Used
library(ggplot2)
library(dye)
dsamp <- diamonds[sample(nrow(diamonds), 1000), ]

# Basic Code
ggplot(dsamp, aes(carat, price)) +
  geom_point(aes(colour = cut), size = 3)+
  scale_color_pentagon_d()

# Direction reversed
ggplot(dsamp, aes(carat, price)) +
  geom_point(aes(colour = cut), size = 3)+
  scale_color_pentagon_d(direction = -1)


}
\seealso{
\code{\link[ggplot2]{discrete_scale}}
}
