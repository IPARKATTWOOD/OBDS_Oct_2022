## Day 4 oop & ggplot2 (some files are stored in ../git/OBDS_Oct_2022/day4)
# 
library(ggplot2)
plot1 <- ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(fill ="red", color ="black") +
  labs(title = "Histogram of sepal lengths", y ="Frequency", x ="Sepal length") +
  theme(text = element_text(size =16))
print(plot1)
summary(iris)
#
base_plot <- ggplot(diamonds, aes(x = carat, y = price, colour = cut)) +
  geom_point()
base_plot + theme_classic()
base_plot + theme_dark()
base_plot +
  labs(title ="Diamond price and carat values",x ="Carat", y ="Price") +
  theme(axis.title = element_text(size =12, face ="bold"),
  axis.text = element_text(size =10),
  plot.title = element_text(hjust =0.5, size =14))
# facet_wrap 
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point() +
  facet_wrap(~cut, nrow =2)
# facet_grid
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point() +
  facet_grid(cut ~ color)
# ChickWeight
obds_chickweight <- ggplot(ChickWeight, aes(x = Time, y = weight, colour = Diet)) +
  geom_point() +
  geom_smooth(method = lm) +
  facet_wrap(~Diet, nrow=2)
# msleep
obds_msleep <- ggplot(msleep, aes(x=order)) +
  geom_bar(aes(fill = genus), color = "black", size = 0.1) +
  theme(
    axis.text.x=element_text(angle = 45, size = rel(0.9), hjust = 1, vjust = 1),
    axis.title=element_text(size = rel(1.2)),
    legend.key.size=unit(1.2, "mm"),
    legend.text = element_text(size = rel(0.5))
  ) +
  labs(x = "Order", y = "Observations") +
  guides(fill = guide_legend(ncol = 3))
# merge 3 images
first_row <- plot_grid(obds_diamonds, obds_chickweight, labels = c("A", "B"), ncol = 2, nrow = 1)
second_row <- cowplot::plot_grid(first_row, obds_msleep, labels = c("","C"), nrow = 2)
second_row
# save images
ggsave("superplot_1.pdf", second_row, width = 10, height = 8)