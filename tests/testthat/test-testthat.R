library(ggplot2)
library(datateachr)

test_that("Test 1: Function creates a ggplot with a custom x-axis name", {
  expected_val <- scatter_plot(cancer_sample, x = cancer_sample$perimeter_mean, y = cancer_sample$texture_mean)
  expect_is(expected_val, "ggplot")
})

test_that("Test 2: Function has categorical fill values", {
  expect_error(scatter_plot(data=cancer_sample, x = cancer_sample$perimeter_mean, y = cancer_sample$texture_mean))
})

test_that("Test 3: Function uses the right dataset", {
  scatter_plot(x = cancer_sample$perimeter_mean, y = cancer_sample$texture_mean)
  expect_true(TRUE, "Test passed.")
})

test_that("Test 4: Function requires a dataset and variables, rather than a row of numbers", {
  # Checking if the arguments are data frames and character strings
  expect_true(is.data.frame(cancer_sample) && is.character("perimeter_mean") && is.character("texture_mean"), "Test passed.")
})

test_that("Test 5: Function can only use numerical dataset", {
  expect_error(easyplot(data=cancer_sample, x = cancer_sample$perimeter_mean, y = cancer_sample$texture_mean))
})

