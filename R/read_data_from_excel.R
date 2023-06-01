#' loading in (read) and previewing the data at ones
#'
#' @param document name of the document with type (.xlsx)
#' @param sheet which sheet should be loaded in
#' @param range the range of the sheet
#'
#' @return loads in data and shows a preview
#' @export
#'
#' @examples
# Generate test data
#'  test_file <- tempfile(fileext = ".xlsx")
#'  test_data <- data.frame(X1 = c(1, 2, 3),X2 = c("A", "B", "C"))
#'  writexl::write_xlsx(test_data, path = test_file)
#'  read_data_from_excel(test_file, sheet = 1, range = "A1:B4")
read_data_from_excel <- function(document, sheet, range) {
  data <- readxl::read_excel(document, sheet = sheet, range = range)
  return(data)
}
