# This is where your discrete ggplot palettes would go

scale_colour_candy_d <- function(direction = 1, ...) {
  ggplot2::discrete_scale("colour", "candy",
                          candy_palette(direction),
                          ...
  )
}

scale_fill_candy_d <- function(direction = 1, ...) {
  ggplot2::discrete_scale("fill", "candy",
                          candy_palette(direction),
                          ...
  )
}


scale_color_candy_d <- scale_colour_candy_d

