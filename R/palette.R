# Define colour palette variables and functions here

candy_colours <- list(
  # add your colours as a named list here, i.e.
  "Azalea" = "#F5BFD2",
  "Jungle Mist" = "#A1CDCE",
  "Zombie" = "#E5DB9C",
  "Chatelle" = "#BEB4C5",
  "Tonys Pink" = "#E6A57E")


candy_palette <- function(direction = 1) {
  # the palette function returns a function,
  # so it would be called like NAME_palette()(2) to generate
  # your palette with two colours
  function(n) {
    # a warning or an error should be presented if n is larger
    # the length of NAME_colours
    if (n > length(candy_colours)) {
      warning("The n value is larger than the number of colours in the palette")
    }
    # if direction is less than 1 reverse the ordering of the
    # palette
    if(direction < 1){
      candy_colours <- rev(candy_colours)
    }
    return(candy_palette [1:n])
  }
}
