save_datafile <- function(data, file_name) {
  # Save as CSV
  csv_filename <- paste0(file_name, ".csv")
  write.csv(data, csv_filename, row.names = FALSE)

  # Save as RDS
  rds_filename <- paste0(file_name, ".rds")
  saveRDS(data, rds_filename)

  message("Data saved as CSV: ", csv_filename)
  message("Data saved as RDS: ", rds_filename)
}
