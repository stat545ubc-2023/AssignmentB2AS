#' scatter_plot
#' @description The AssignmentB2AS package generates a scatter plot with ggplot2. Using selected data sets, this package offers a quick way to assess if there is a relationship between independent (x) and dependent (y) variables with the visualization options of bullet size 1 and purple color.
#'
#' @param data The input dataset
#' @param x An independent variable in the dataset, 
#' @param y A  dependent variable in the dataset, 
#' @param x_axis_name Name of the x-axis 
#' @return A scatter plot
#' @examples
#' scatter_plot(x = datateachr::cancer_sample$perimeter_mean, y = datateachr::cancer_sample$texture_mean)
#' @export
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
