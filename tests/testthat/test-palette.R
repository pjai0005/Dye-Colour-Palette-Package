test_that("direction", {
  expect_equal(pentagon_palette()(5), c("#e3733c", "#fdde4d", "#8bc59d", "#467382", "#823a74"))
  expect_equal(pentagon_palette(direction = -1)(3), c("#8bc59d", "#fdde4d", "#e3733c"))
  expect_warning(pentagon_palette()(7), "The color palette contains 5 colors.")
})

