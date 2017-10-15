#' Draw a name
#'
#' @param pren The name you want to plot - default is Vincent
#' @param s The genre of the name you want to plot useful for mixt names - default is M
#'
#' @return a ggplot of the historical trend of the name
#' @import ggplot2
#' @import assertthat
#' @import dplyr
#' @examples
#' draw_a_name()
#' draw_a_name("Louis","M")
#' draw_a_name("Dominique","F")
#'
#' @export
draw_a_name <- function(pren = "Vincent", s = "M") {
  assert_that(is.character(pren))
  assert_that(is.character(s))

  ggplot(prenoms %>%
           filter(name == pren, sex ==s) %>%
           group_by(year) %>%
           summarize(Total = sum(n)),
         aes(year,Total)) + geom_line() + ggtitle(paste("Number of ",pren," in time"))
}


