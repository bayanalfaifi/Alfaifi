#'@description Calculate the preparation Time
#'@name Alfaifi
#'@title Calculate Prep Time
#'@param The ingredients chosen by the use an produced by the funtion prepare_data
#'@return The Prep Time
prep_time <- function(.ingredients_choice){
  predict(Alfaifi::prp_time_fit, new_data = .ingredients_choice)
}
