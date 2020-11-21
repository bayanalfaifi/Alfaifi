#'@description Calculate the cook time
#'
#'@param .ingredients_choice The ingredients chosen by the use an produced by the funtion prepare_data
#'@return The Cook Time

cook_time <- function(.ingredients_choice){
  predict(cook_time_fit, new_data = .ingredients_choice)
}
