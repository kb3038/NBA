#' NBA_correlation Function
#'
#' This function asks for an NBA season and outputs a correlation matrix for all of the numeric variables
#' @param input_year Year of NBA season
#' @keywords NBA
#' @export
#' @import dplyr
#' @import purrr
#' @importFrom magrittr %>%
#' @examples
#' NBA_correlation()

NBA_correlation <- function(input_year){
  library(magrittr, "%>%")
  NBA_numeric <-
    NBA_data %>%
    dplyr::filter(Year == input_year) %>%
    purrr::keep(is.numeric)

  NBA_numeric_drop_na <-
    tidyr::drop_na(NBA_numeric) %>%
    dplyr::select (-(Year))
  stats::cor(NBA_numeric_drop_na)
}
