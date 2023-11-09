library(ggplot2)
library(datateachr)

test_that("Test 1: Function creates a ggplot with a custom x-axis name", {
  expected_val <- scatter_plot(cancer_sample, x = cancer_sample$perimeter_mean, y = cancer_sample$texture_mean)
  expect_is(expected_val, "ggplot")
})

test_that("Test 2: Function haves continuous numerical x values", {
  expect_error(scatter_plot(cancer_sample, x = cancer_sample$perimeter_mean, y = cancer_sample$texture_mean))
})

test_that("Test 3: Function takes four input variable", {
  expect_error(scatter_plot(cancer_sample, x = cancer_sample$perimeter_mean, y = cancer_sample$texture_mean))
})

test_that("Test 4: Function has categorical fill values", {
  expect_error(scatter_plot( data=cancer_sample, x = cancer_sample$perimeter_mean, y = cancer_sample$texture_mean))
  })