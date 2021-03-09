#' NBA_player_datapoint Function
#'
#' This function asks for an NBA season and outputs the number of points Michael Jordan scored in that season
#' @param input_year Year of NBA season
#' @keywords NBA
#' @export
#' @examples
#' NBA_player_datapoint()
#'

NBA_player_datapoint <- function(input_year){
  library(magrittr, "%>%")
  NBA::NBA_data %>%
    dplyr::filter(Year == input_year & Player == "Michael Jordan*") %>%
    dplyr::select(Player, Year, PTS)
}
