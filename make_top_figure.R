# Gary Koplik
# winter 2018
# make_top_figure.R

# clear environment for replicability
rm(list = ls())

library(magick)

# making the top image using convolution images
no_points <- image_read("./images/image.png")
conv <- image_read("./images/conv_image.png")
with_points <- image_read("./images/image_points.png")

img <- c(no_points, conv, with_points)

left_to_right <- image_append(img, stack = T)
image_write(left_to_right, path = "./top_figure.png", format = "png")

# making the top image using normalized cross correlation images
no_points <- image_read("./images/background.png")
conv <- image_read("./images/cross_cor_new_padding.png")
with_points <- image_read("./images/cross_cor_points_new_padding_0.36.png")

img <- c(no_points, conv, with_points)

left_to_right <- image_append(img, stack = T)
image_write(left_to_right, path = "./top_figure_cross_cor.png", format = "png")


