test_that("print_head() correctly prints the first few rows of a dataset", {
  # Generate test data
  dataset <- data.frame(
    X1 = c(1.5, 2.8, 3.2, 4.7),
    X2 = c(5.1, 6.2, 7.3, 8.4),
    X3 = c(9.9, 10.2, 11.5, 12.8)
  )

  # Capture the printed output
  capture_output <- capture.output(print_head(dataset))

  # Check if the output contains the expected text
  expect_true("First few rows of the dataset:" %in% capture_output,
              info = "Expected text present")

  # Print the captured output
  cat("\n")
  cat("Captured output:\n")
  cat("=====================\n")
  cat(capture_output, sep = "\n")
  cat("=====================\n")
})

