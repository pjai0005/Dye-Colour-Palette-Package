library(ggplot2)
library(palmerpenguins)

plot <- ggplot(data = penguins)


test_that("fill", {

  expect_true(is.ggplot(plot + geom_bar(aes(island, fill = species)) +
                          scale_fill_pentagon_d()))

  expect_true(is.ggplot(plot + geom_bar(aes(island, fill = species)) +
                          scale_fill_pentagon_d(direction = -1)))

})
