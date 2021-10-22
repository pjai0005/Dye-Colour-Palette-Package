#' Color Scales for Continuous Variables:
#'
#' @description
#' \code{scale_colour_pentagon_seq_c } It is a color scales used with ggplot2 for continuous data values mapped on the color aesthetic of Visualization in R. It chooses the Pentagon Palette which consists of 5 colors. The level of the color scale can be changed using the \code{direction}.
#'
#' @usage
#' scale_colour_pentagon_seq_c (
#' name= "Mulberry Wine",
#' direction=1,
#' amount=0.6,
#' ...)
#'
#'
#' @param name a character vector to choose a color from the palette. Default value is Mulberry Wine
#' @param direction  a numeric value to set the level of the scale. If direction is < 0 , the palette switches from high and low
#' @param amount a double vector with which the amount of opacity of the color can be adjusted. Default value is 0.6
#' @param ... Other parameters that support the scale_colour_discrete function
#'
#' @details Default colour gradients are generated with pentagon palette. Generally, for continuous colour scales you want to keep hue constant, but vary chroma and luminance.
#'
#' @seealso \code{\link[ggplot2]{scale_color_gradient}}
#'
#' @examples
#'
#' # Data Used
#' library(ggplot2)
#' library(dye)
#' dsamp <- diamonds[sample(nrow(diamonds), 1000), ]
#'
#' # Basic continuous variable
#' ggplot(dsamp, aes(price, depth, color = price)) +
#'  geom_point( size = 3)+
#'   scale_color_pentagon_seq_c() +
#'   ggtitle("Example of Continuous Scale")
#'
#'
#' # Basic continuous variable with Different Colour
#' ggplot(dsamp, aes(price, depth, color = price)) +
#'  geom_point( size = 3)+
#'   scale_color_pentagon_seq_c("Indigo Blue") +
#'   ggtitle("Example of Continuous Scale with Different Colour")
#'
#'
#' # Basic continuous variable on a Reverse Scale
#' ggplot(dsamp, aes(price, depth, color = price)) +
#'  geom_point( size = 3) +
#'   scale_colour_pentagon_seq_c(direction = -1) +
#'   ggtitle("Example of Continuous Scale Reverse")
#'
#'
#' # Basic continuous variable on a Reverse Scale with Different Colour
#' ggplot(dsamp, aes(price, depth, color = price)) +
#'  geom_point( size = 3)+
#'   scale_colour_pentagon_seq_c("Dusty Green", direction = -1) +
#'   ggtitle("Example of Continuous Scale Reverse with Different Colour")
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

    stop(paste0("\n The Palette contains:", names(pentagon_colours)))

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


