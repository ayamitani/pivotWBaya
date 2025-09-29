test_that("should have 20 years worth of data", {
  expect_equal(length(unique(pivot_wb_data(maternal_mortality, "maternal_mortality")$year)), 20)
})
