library(ggplot2)
library(palmerpenguins)

plot <- ggplot(data = penguins)


test_that("continous", {

  expect_true(is.ggplot(plot + geom_point(aes(flipper_length_mm,
                                              body_mass_g,
                                              color = bill_depth_mm)) +
                          scale_color_pentagon_seq_c()))

  expect_true(is.ggplot(plot + geom_point(aes(flipper_length_mm,
                                              body_mass_g,
                                              color = bill_depth_mm)) +
                          scale_color_pentagon_seq_c("Indigo Blue")))

  expect_true(is.ggplot(plot + geom_point(aes(flipper_length_mm,
                                              body_mass_g,
                                              color = bill_depth_mm)) +
                          scale_color_pentagon_seq_c(direction = -1)))

  expect_true(is.ggplot(plot + geom_point(aes(flipper_length_mm,
                                              body_mass_g,
                                              color = bill_depth_mm)) +
                          scale_color_pentagon_seq_c("Indigo Blue", direction = -1)))


})
