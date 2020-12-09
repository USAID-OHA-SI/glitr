## Background for glamr hex logo

library(tidyverse)
library(glitr)
library(extrafont)
library(svglite)

n <- 500
shapes <- c(rep(18,7), rep(17, 2), rep(16, 1))
colors <- si_palettes$siei
sizes <- c(1:6)
set.seed(42)

df <- tibble(x = runif(n),
             y = runif(n),
             z = sample(sizes, n, replace = TRUE),
             shape = sample(shapes, n, replace = TRUE),
             color = sample(colors, n, replace = TRUE)
)


df %>%
  ggplot(aes(x, y, shape = shape, color = color, size = z)) +
  geom_point() +
  scale_shape_identity() +
  scale_color_identity() +
  si_style_void() +
  theme(legend.position = "none")

df %>%
  ggplot(aes(x, y, color = color, size = z)) +
  geom_point(shape = 18) +
  scale_shape_identity() +
  scale_color_identity() +
  si_style_void() +
  theme(legend.position = "none")

ggsave("../Downloads/glitr.svg", dpi = 300, height = 8, width = 8)
