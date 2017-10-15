#' Save_as_csv
#'
#' @description A function that saves a dataframe as a .csv file to the working directory and outputs the path of the file (silentlty)
#' @param x a data frame
#' @param name an output name
#' @import assertthat
#' @return the path of where the file was saved
#'
#' @examples
#'  head <- head(prenoms) #avoid writing 3M lines
#'  save_as_csv(head,"prenoms.csv")
#'
#' @export
save_as_csv <- function(x,name = "test.csv") {
  assert_that(is.data.frame(x))
  assert_that(has_extension(name,"csv"))
  path = getwd()
  write.csv(x = x,file = paste0(path,"/",name))
  invisible(path)
}
