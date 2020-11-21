#' @description  Create Dataset used in model fiting
#'
#' @param .selected_ingredients A list of ingredients chosen by the user
#' @param .flavor_profile The flavor proile selected by the user
#' @return A one observation data set to be used to calculate prep and cook time

prepare_data <- function(.selected_ingredients, .flavor_profile) {
  Alfaifi::ingredients %>%
    mutate(id=1L) %>%
    select(id, ingredient) %>%
    distinct() %>%
    mutate(value = as.integer(ingredient %in% .selected_ingredients)) %>%
    mutate( flavor_profile = .flavor_profile) %>%
    pivot_wider(names_from = "ingredient", values_from = "value")
}
