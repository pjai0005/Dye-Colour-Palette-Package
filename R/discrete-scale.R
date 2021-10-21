# This is where your discrete ggplot palettes would go

scale_colour_pentagon_d <- function(primary = "Punky Orange",
                                    other = "Mulberry Wine",
                                    direction = 1, ...)
  {
  ggplot2::discrete_scale("colour", "pentagon",
                          pentagon_palette(primary,
                                           other,
                                           direction),
                          ...)
}

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


scale_color_pentagon_d <- scale_colour_pentagon_d
