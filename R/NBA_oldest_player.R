#' NBA_oldest_player Function
#'
#' This function asks for an NBA season and outputs the oldest player alphabetically for that season
#' @param input_year Year of NBA season
#' @keywords NBA
#' @export
#' @examples
#' NBA_oldest_player()
#'

NBA_oldest_player <- function(input_year){
  library(magrittr, "%>%")
  NBA %>%
    dplyr::filter(Year == input_year) %>%
    dplyr::arrange(desc(Age), Player) %>%
    dplyr::select(Player) %>%
    utils::head(1)
}
