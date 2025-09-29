#' @title Pivot World Bank data
#' @describeIn This function turns wide World Bank data into a long data format
#' @param data.name Name of the original data set
#' @param var.name Name of the new variable
#' @author Aya Mitani
#' @examples
#' # Use pivot_wb_data() on maternal mortality data
#' pivot_wb_data(maternal_mortality, "maternal_mortality")
#' @export

pivot_wb_data <- function(data.name, var.name){
  data.name |>
    dplyr::select(iso, X2000:X2019) |>
    pivot_longer(cols = starts_with("X"),
                 names_to = "year",
                 names_prefix = "X",
                 values_to = var.name) |>
    mutate(year = as.numeric(year)) |>
    arrange(iso, year)
}
