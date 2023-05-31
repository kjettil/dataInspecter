#' fancier version of the head() function
#'
#' @param data file you want to see
#'
#' @return first 10 rows of a dataset
#' @export
#'
#' @examples
#' dataset <- data.frame(X1 = c(1.5, 2.8, 3.2, 4.7),X2 = c(5.1, 6.2, 7.3, 8.4),X3 = c(9.9, 10.2, 11.5, 12.8))
#' print_head(dataset)
print_head <- function(data) {
  cat("\n")
  cat("***********************\n")
  cat("First few rows of the dataset:\n")
  cat("***********************\n")
  cat("\n")
  print(utils::head(data))
  cat("\n")
}

