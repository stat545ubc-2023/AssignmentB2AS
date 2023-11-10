#' Generate a scatter plot.
#'
#' This function generates a scatter plot using ggplot2.
#'
#' @param data The input dataset.
#' @param x A continuous numerical variable in the dataset, it is one of the variable being investigated.
#' @param y A continuous numerical variable in the dataset, it is one of the variable being investigated.
#' @param x_label This is the name of the x-axis given by the user who uses this function.
#' @param y_label This is the name of the y-axis given by the user who uses this function.
#' @param title The title of the scatter plot.
#'
#' @return A ggplot object representing the scatter plot.
#'
#' @examples
#' data <- datateachr::cancer_sample
#' scatter_plot(data = data, x = data$perimeter_mean, y = data$texture_mean, x_label = "Perimeter", y_label = "Texture", title = "Scatter Plot Example")
#'
#' @import ggplot2
#' @importFrom ggplot2 ggplot aes geom_point labs
#' @export
scatter_plot <- function(data, x, y, x_label = "X-axis", y_label = "Y-axis", title = "Scatter Plot") {
  ggplot(data, aes(x = {{x}}, y = {{y}})) +
    geom_point() +
    labs(x = x_label, y = y_label, title = title)
}
