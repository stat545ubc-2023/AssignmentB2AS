#' scatter_plot
#' @description The AssignmentB2AS package generates a scatter plot with ggplot2. Using selected data sets, this package offers a quick way to assess if there is a relationship between independent (x) and dependent (y) variables with the visualization options of bullet size 1 and purple color.
#'
#' @param x Data for the x-axis.
#' @param y Data for the y-axis.
#' @param x_label Label for the x-axis.
#' @param y_label Label for the y-axis.
#' @param title Title of the plot. 
#' @return A scatter plot
#' @examples
#' Load the dataset
#' data(cancer_sample)
#' Example code here
#' scatter_plot(x = datateachr::cancer_sample$perimeter_mean, y = datateachr::cancer_sample$texture_mean)
#' @export

library(datateachr)
library(ggplot2)
scatter_plot <- function(x, y, x_label = "X-axis", y_label = "Y-axis", title = "Scatter Plot") {
  plot_data <- data.frame(x = x, y = y)
  
  # Suppressing warnings while creating the plot
  suppressWarnings({
    scatter_plot <- ggplot(plot_data, aes(x = x, y = y)) +
      geom_point(size = 1, color = "purple") +
      labs(x = x_label, y = y_label, title = title)
  })
  
  # Printing the scatter plot
  print(scatter_plot)
}
