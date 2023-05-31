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
#' read_data_from_excel("~/dsfb2/dataInspecter/example_files/Annex_1_ESAC-Net_report_2020_downloadable_tables.xlsx", "D1_J01A_AC", "a2:K33")
read_data_from_excel <- function(document, sheet, range) {
  data <- readxl::read_excel(document, sheet = sheet, range = range)
  return(data)
}
