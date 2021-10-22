#' @title Colour Scale Fill for Discrete Variables :
#'
#' \code{scale_fill_pentagon_d }
#'
#' @description It is a color scales used with ggplot2 to fill discrete data values mapped on the color aesthetic of Visualization in R. It chooses the Pentagon Palette which consists of 5 colors:
#' \describe{
#'   \item{Punky Orange}
#'   \item{Gold Yellow}
#'   \item{Dusty Green}
#'   \item{Indigo Blue}
#'   \item{Mulberry Wine}
#'
#'   }
#'   The level of the color scale can be changed using the \code{direction}.
#'
#' @section Format
#' scale_fill_pentagon_d (
#' ...,
#' primary = "Punky Orange",
#' other = "Mulberry Wine",
#' direction=1)
#'
#' @details
#'
#' @param primary a character vector to choose a color from the palette. The primary color's default value is Punky Orange}
#' @param other a character vector to choose a color from the palette. The default value is Mulberry Wine}
#' @param direction a numeric value to set the level of the scale. The default value is 1. If direction is < 0 , the palette switches from high and low}
#' @param ... Other parameters that support the scale_colour_discrete function.
#'
#' @seealso \code{\link[ggplot2]{discrete_scale}}
#'
#' @examples
#'
#' # Data Used
#' dsamp <- diamonds[sample(nrow(diamonds), 1000), ]
#'
#' # Basic Code
#'  ggplot(dsamp, aes(cut, price, fill = cut)) +
#'      geom_col()+
#'      scale_fill_pentagon_d()
#'
#'
#' # Direction Reversed
#'  ggplot(dsamp, aes(cut, price, fill = cut)) +
#'      geom_col()+
#'      scale_fill_pentagon_d(direction = -1)
#'
#'
#' @export scale_fill_pentagon_d

# This is where your fill ggplot palettes would go

scale_fill_pentagon_d <- function(primary = "Punky Orange",
                                  other = "Mulberry Wine",
                                  direction = 1, ...)
{
  ggplot2::discrete_scale("fill", "pentagon",
                          pentagon_palette(primary,
                                           other,
                                           direction=direction),
                          ...)
}
