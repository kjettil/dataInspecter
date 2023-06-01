test_that("save_datafile() saves data file in CSV and RDS formats", {
  # Generate test data
  data <- data.frame(
    ID = c(1, 2, 3),
    Name = c("henk", "hans", "tim")
  )

  # Define test file name
  file_name <- "test_data"

  # Run save_data() function
  save_datafile(data, file_name)

  # Check if CSV file is saved
  csv_filepath <- paste0(file_name, ".csv")
  expect_true(file.exists(csv_filepath), info = "CSV file exists")

  # Check if RDS file is saved
  rds_filepath <- paste0(file_name, ".rds")
  expect_true(file.exists(rds_filepath), info = "RDS file exists")

  # Clean up - delete the test files
  file.remove(csv_filepath)
  file.remove(rds_filepath)
})
