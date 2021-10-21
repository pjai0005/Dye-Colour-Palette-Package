#' @title Colour Scale Fill for Discrete Variables :
#'
#' \code{scale_fill_pentagon_d } is a color scales used with ggplot2 for continuous data values mapped on the color aesthetic. It chooses the branded palette and the level of the color scale can be changed using the \param{direction}.
#'
#' @section Usage
#' scale_fill_pentagon_d (
#' ...,
#' direction=1,
#' amount=0.2)
#'
#' @section Arguments
#' @param primary a character vector to choose a color from the palette
#' @param direction: a numeric value to set the level of the scale \newline if direction is < 0 switch high and low
#' @param other numeric values to set the variation in color between high and low scale
#'
#' @details Default colours are generated with branded palette. Generally, for continuous colour scales you want to keep hue constant, but vary chroma and luminance.
#' @seealso \code{\link[ggplot2]{scale_color_gradient}}
#' @examples
#'
#' df <- data.frame(
#' x = runif(100),
#' y = runif(100),
#' z1 = rnorm(100),
#' z2 = abs(rnorm(100))
#' )
#'
#'
#'
#' # For coloring the based on continuous variable
#' ggplot(df, aes(x, y)) +
#'   geom_point(aes(colour = z1)) +
#'     scale_fill_pentagon_d ()
#'
#' # For coloring the based on continuous variable on a reverse scale
#' ggplot(df, aes(x, y)) +
#'   geom_point(aes(colour = z1)) +
#'     scale_fill_pentagon_d (direction=-1)
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
                                           direction),
                          ...)
}
