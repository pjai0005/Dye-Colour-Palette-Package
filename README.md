
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dye

The package name is dye substance used to impart colour to textiles,
paper, leather, and other materials.

<!-- badges: start -->
<!-- badges: end -->

The goal of `dye` is to attach a color palette to a `ggplot` object to
modify the default color and fill aesthetics. It can be used with both,
categorical/discrete and continuous scales. The package has 5 vibrant
colors to match the different types of dyes.

## Installation

You can install the development version of dye with

``` r
devtools::install_github("etc5523-2021/r-package-takehome-pjai0005")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(dye)
library(tidyverse)
library(ggplot2)
library(palmerpenguins)

## basic example code

ggplot(penguins, aes(bill_depth_mm, bill_length_mm, color = species)) +
  geom_point( size = 3 ) +
  theme_bw()+
  scale_color_pentagon_d() +
  ggtitle("Example of Discrete Scale (Color)")
```

<img src="man/figures/README-example-1.png" width="100%" />

``` r
ggplot(penguins, aes(bill_depth_mm, bill_length_mm, color = species)) +
  geom_point( size = 3 ) +
  theme_bw()+
  scale_colour_pentagon_d(direction = -1) +
  ggtitle("Example of Discrete Scale (Colour)")
```

<img src="man/figures/README-example-2.png" width="100%" />

## For Fill Aesthetic

``` r
ggplot(penguins, aes(island, fill = species)) +
  geom_bar() +
  theme_bw()+
  scale_fill_pentagon_d() +
  ggtitle("Example of Discrete Scale (Fill)")
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

``` r
ggplot(penguins, aes(island, fill = species)) +
  geom_bar() +
  theme_bw()+
  scale_fill_pentagon_d(direction = -1) 
```

<img src="man/figures/README-unnamed-chunk-2-2.png" width="100%" /> \#\#
For Continuous Scales

``` r
ggplot(penguins, aes(flipper_length_mm, body_mass_g, color = bill_depth_mm)) +
  geom_point( size = 3 ) +
  theme_bw()+
  scale_color_pentagon_seq_c("Indigo Blue") +
  ggtitle("Example of Continuous Scale")
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

``` r
ggplot(penguins, aes(flipper_length_mm, body_mass_g, color = bill_depth_mm)) +
  geom_point( size = 3 ) +
  theme_bw()+
  scale_colour_pentagon_seq_c(direction = -1) +
  ggtitle("Example of Continuous Scale Reverse")
```

<img src="man/figures/README-unnamed-chunk-3-2.png" width="100%" />
