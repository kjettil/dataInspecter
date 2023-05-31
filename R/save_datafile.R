#' Save data as .CSV and .rds
#'
#' @param data a variable with dataset inside
#' @param file_name the name the file gets
#'
#' @return saves file as .csv and .rds
#' @export
#'
#' @examples
#' dataset <- data.frame(X1 = c(1.5, 2.8, 3.2, 4.7), X2 = c(5.1, 6.2, 7.3, 8.4), X3 = c(9.9, 10.2, 11.5, 12.8))
#' save_datafile(dataset, "test_dataset")
save_datafile <- function(data, file_name) {
  # Save as CSV
  csv_filename <- paste0(file_name, ".csv")
  utils::write.csv(data, csv_filename, row.names = FALSE)

  # Save as RDS
  rds_filename <- paste0(file_name, ".rds")
  saveRDS(data, rds_filename)

  message("Data saved as CSV: ", csv_filename)
  message("Data saved as RDS: ", rds_filename)
}
