#' @title Color Scales for Continous Variables:
#'
#' \code{scale_colour_pentagon_seq_c } is a color scales used with ggplot2 for continuous data values mapped on the color aesthetic. It chooses the branded palette and the level of the color scale can be changed using the \param{direction}.
#'
#' @section Usage
#' scale_colour_pentagon_seq_c (
#' ...,
#' name = "Mulberry Wine",
#' direction=1,
#' amount=0.2)
#'
#' @section Arguments
#' @param name a character vector to choose a color from the palette
#' @param direction: a numeric value to set the level of the scale \newline if direction is < 0 switch high and low
#' @param amount numeric values to set the variation in color between high and low scale
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
# For coloring the based on continuous variable
#' ggplot(df, aes(x, y)) +
#'   geom_point(aes(colour = z1)) +
#'     scale_colour_branded_seq_c()
#'
#' # For coloring the based on continuous variable on a reverse scale
#' ggplot(df, aes(x, y)) +
#'   geom_point(aes(colour = z1)) +
#'     scale_colour_branded_seq_c(direction=-1)
#'
#' @export scale_colour_pentagon_seq_c
#'

# This is where functions for your continous scale go

scale_colour_pentagon_seq_c <- function(name= "Mulberry Wine",
                                        direction = 1,
                                        amount = 0.6, ...)
  {
  # check that name is in your palette
  if(!name %in% names(pentagon_colours))

  # throw an error if it isn't
  {

    stop(paste0("\n The Palette contains 5 colours: \n", names(pentagon_colours), "\n"))

    #return(palette_catalog[[palette]][seq_len(name)])

  }

  # set the low colour
  low = pentagon_colours[[name]]

  # set the high colour with colorspace pkg
  high = colorspace::lighten(pentagon_colours[[name]],
                amount = amount,
                space = "combined",
                fixup = TRUE)

  # if direction is < 0 switch high and low
  if (direction < 0){
    temp = low
    low = high
    high = temp
  }

  # pass everything on to ggplot2 color gradient

  ggplot2::scale_colour_gradient(
    ...,
    low = low,
    high = high,
    na.value = "grey",
    aesthetics = "colour"
  )

}


