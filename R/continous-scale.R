# This is where functions for your continous scale go
library(colorspace)
scale_colour_pentagon_seq_c <- function(name= "Mulberry Wine",
                                        direction = 1,
                                        amount = 0.6, ...)
  {
  # check that name is in your palette
  if(!name %in% names(pentagon_colours))

  # throw an error if it isn't
  {
    print("Colour does not exist in Pentagon Palette.")


    #return(palette_catalog[[palette]][seq_len(name)])
  }

  # set the low colour
  low = pentagon_colours[[name]]

  # set the high colour with colorspace pkg
  high = lighten(pentagon_colours[[name]],
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

  ggplot2::scale_color_gradient(
    ...,
    low = low,
    high = high,
    na.value = "grey",
    aesthetics = "colour"
  )

}

scale_color_pentagon_seq_c <- scale_colour_pentagon_seq_c
