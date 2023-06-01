test_that("time() function returns the correct greeting and time", {
  # Call the function
  result <- time()

  # Check if the result contains the expected greetings and time
  if (grepl("Good morning", result)) {
    expect_match(result, "Good morning!")
    expect_match(result, "The current time is \\d{2}:\\d{2}:\\d{2}")
  } else if (grepl("Good afternoon", result)) {
    expect_match(result, "Good afternoon!")
    expect_match(result, "The current time is \\d{2}:\\d{2}:\\d{2}")
  } else if (grepl("Good evening", result)) {
    expect_match(result, "Good evening!")
    expect_match(result, "The current time is \\d{2}:\\d{2}:\\d{2}")
  } else {
    expect_match(result, "Good night!")
    expect_match(result, "The current time is \\d{2}:\\d{2}:\\d{2}")
  }
})
