#' Color Scales for Discrete Variables:
#'
#'
#' @description
#' \code{scale_colour_pentagon_d } It is a color scales used with ggplot2 for discrete data values mapped on the color aesthetic of Visualization in R. It chooses the Pentagon Palette which consists of 5 colors. The level of the color scale can be changed using the \code{direction}.
#'
#' @usage
#' scale_colour_pentagon_d (
#' primary = "Punky Orange",
#' other = "Mulberry Wine",
#' direction=1,
#' ...)
#'
#'
#' @param primary a character vector to choose a color from the palette. The primary color's default value is Punky Orange
#' @param other a character vector to choose a color from the palette. The default value is Mulberry Wine
#' @param direction a numeric value to set the level of the scale. The default value is 1. If direction is < 0 , the palette switches from high and low
#' @param ... Other parameters that support the scale_colour_discrete function
#'
#'
#' @details  The package has 5 vibrant colors to match the different types of dyes.
#'
#' @seealso \code{\link[ggplot2]{discrete_scale}}
#'
#' @examples
#' # Data Used
#' library(ggplot2)
#' library(dye)
#' dsamp <- diamonds[sample(nrow(diamonds), 1000), ]
#'
#' # Basic Code
#' ggplot(dsamp, aes(carat, price)) +
#'   geom_point(aes(colour = cut), size = 3)+
#'   scale_color_pentagon_d()
#'
#' # Direction reversed
#' ggplot(dsamp, aes(carat, price)) +
#'   geom_point(aes(colour = cut), size = 3)+
#'   scale_color_pentagon_d(direction = -1)
#'
#'
#' @export scale_colour_pentagon_d
#'


# This is where your discrete ggplot palettes would go

scale_colour_pentagon_d <- function(primary = "Punky Orange",
                                    other = "Mulberry Wine",
                                    direction = 1, ...)
  {

  if(!primary %in% names(pentagon_colours))

    # throw an error if it isn't
  {

    stop(paste0("\n The Palette contains:", names(pentagon_colours)))

    #return(palette_catalog[[palette]][seq_len(name)])

  }



  ggplot2::discrete_scale("colour", "pentagon",
                          pentagon_palette(primary,
                                           other,
                                           direction = direction),
                          ...)
}

