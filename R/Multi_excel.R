#' Multi_excel
#'
#' @description  Reads a whole excel file (xlsx) at once and saves every sheet as a dataframe in a list
#' @param path the path of the excel file
#' @import readxl
#' @import assertthat
#' @return a list of dataframes
#' @examples my_csv_reader("/Users/XXX/Documents/excel.xlsx")
#' @export

my_excel_reader <- function(path) {
  assert_that(has_extension(path,".xlsx"))
  assert_that(is.dir(dirname(path)))
  sheet_n <- length(excel_sheets(path))
  readxl_2 <- function(i) {read_xlsx(path,i)}
  lapply(c(1:sheet_n),readxl_2)
}
