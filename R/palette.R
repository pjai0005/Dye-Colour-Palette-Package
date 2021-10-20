# Define colour palette variables and functions here

NAME_colours <- list(
  # add your colours as a named list here, i.e.
  "pink" = "#ea5f94"
)


NAME_palette <- function(direction = 1) {
  # the palette function returns a function,
  # so it would be called like NAME_palette()(2) to generate
  # your palette with two colours
  function(n) {
    # a warning or an error should be presented if n is larger
    # the length of NAME_colours

    # if direction is less than 1 reverse the ordering of the
    # palette
  }
}
