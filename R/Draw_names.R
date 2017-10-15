#' Draw a name
#'
#' @description a function that plots the historical trend of two names
#' @param pren The names you want to plot - default is Vincent and Louis
#'
#' @return a ggplot of the historical trend of the two names
#' @import ggplot2
#' @import assertthat
#' @import dplyr
#' @examples
#' draw_names()
#' draw_names("Dominique","Louis")
#'
#' @export
draw_names <- function(pren = c("Vincent","Louis")) {

  assert_that(is.character(pren))

  ggplot(prenoms %>%
           filter(name %in% pren) %>%
           group_by(name,year) %>%
           summarize(Total = sum(n)),
         aes(year,Total,group = name, colour = name)) + geom_line() + ggtitle(paste(pren," ",collapse = ''))
}
