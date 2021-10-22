#' Pentagon Colours
#'
#' @import colorspace
#'
#' @examples
#' library(unikn)
#' seecol("pentagon_colours")
#'
#' @rdname pentagon_colours
#' @export pentagon_colours

pentagon_colours <- list(
  # add your colours as a named list here, i.e.
  "Punky Orange" = "#e3733c",
  "Gold Yellow" = "#fdde4d",
  "Dusty Green" = "#8bc59d",
  "Indigo Blue" = "#467382",
  "Mulberry Wine" = "#823a74")
#'
#' Pentagon Palette
#' @description
#'  \code{pentagon_palette} uses the custom color palette to be used with ggplot2 to generate the colors for discrete variables with maximum of 5 categories.
#'
#'
#'
#'
#' @usage
#' pentagon_palette(
#' direction = 1,
#' primary = "Punky Orange",
#' other = "Mulberry Wine")
#'
#' @param primary the baseline color for continuous scale
#' @param direction a numeric value to set the direction of the color scale. if direction is < 0 the color branded_colors list is reversed.
#' @param other used when there are two categories in the data.
#'
#' @examples
#' # Default colors are generated using this Pentagon Palette.
#' pentagon_palette (primary = "Punky Orange", other = "Mulberry Wine", direction = 1)(2)
#'
#' @export pentagon_palette
#'

pentagon_palette <- function(direction = 1,  primary = "Punky Orange", other = "Mulberry Wine")
  {
  # the palette function returns a function,
  # so it would be called like NAME_palette()(2) to generate
  # your palette with two colours

    stopifnot(primary %in% names(pentagon_colours))

  function(n) {
    # a warning or an error should be presented if n is larger
    # the length of NAME_colours
    if (n > length(pentagon_colours)) {
      warning("The color palette contains 5 colors.")
    }
    # if direction is less than 1 reverse the ordering of the
    # palette
    if (n == 2) {
      other <- if (!other %in% names(pentagon_colours)) {
        other
      } else {
        pentagon_colours[other]
      }
      color_list <- c(other, pentagon_colours[primary])
    } else {
      color_list <- pentagon_colours[1:n]
    }

    color_list <- unname(unlist(color_list))
    if (direction >= 0) color_list else rev(color_list)
  }
}

