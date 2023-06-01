test_that("read_data_from_excel() correctly reads data from an Excel file", {
  # Generate test data
  test_file <- tempfile(fileext = ".xlsx")
  test_data <- data.frame(
    X1 = c(1, 2, 3),
    X2 = c("A", "B", "C")
  )
  writexl::write_xlsx(test_data, path = test_file)

  # Call the function
  result <- read_data_from_excel(test_file, sheet = 1, range = "A1:B4")

  # Check if the result is a data frame
  expect_true(is.data.frame(result))

  # Check if the result has the expected number of rows and columns
  expect_equal(nrow(result), 3)
  expect_equal(ncol(result), 2)

  # Clean up the test file
  unlink(test_file)
})
