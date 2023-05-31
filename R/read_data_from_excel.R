read_data_from_excel <- function(document, sheet, range) {
  data <- read_excel(document, sheet = sheet, range = range)
  return(data)
}
