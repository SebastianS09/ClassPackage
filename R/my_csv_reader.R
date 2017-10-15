#' My_csv reader
#'
#' @description A function that reads all the csv files saved in a directory and outputs them as a list of dataframes
#' @param folder the directory where the csv files are saved (default to the working directory)
#'
#' @return a list of dataframes
#' @import assertthat
#' @examples
#' my_csv_reader()
#' my_csv_reader("/Users/XXX/Documents/MyCsvs")
#'
#' @export

my_csv_reader <- function(folder = getwd()) {
  assert_that(is.dir(folder))
  files <- (list.files(folder, pattern = ".*csv$", full.names = TRUE))
  output <- lapply(files,read.csv)
  names(output) <- basename(files)
  assert_that(not_empty(output))
  return (output)
}
