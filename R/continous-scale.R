# This is where functions for your continous scale go

scale_colour_candy_seq_c <- function(name, direction = 1, amount = 0.2, ...) {
  # check that name is in your palette
  if(name == "Azalea" |
     name == "Jungle Mist" |
     name == "Zombie" |
     name == "Chatelle" |
     name == "Tonys Pink")
    {
    return(name)
  }

  # throw an error if it isn't
else {print("use color inside candy_palette")
  return(palette_catalog[[palette]][seq_len(name)])}
  # set the low colour

  # set the high colour with colorspace pkg

  # if direction is < 0 switch high and low

  # pass everything on to ggplot2 color gradient

  ggplot2::scale_color_gradient(
    ...
  )

}

