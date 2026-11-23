#' @method as.double nutrition
#' @export
as.double.nutrition <- \(
  x, 
  incl_calorie = FALSE, 
  #incl_usd = FALSE,
  incl_water = TRUE,
  incl_carbohydrate = TRUE, # `fiber` and `sugar` matters more
  rel = TRUE,
  ...
) {
  z <- c(
    # sum(numeric()) returns 0
    calorie = if (incl_calorie) x@calorie |> sum(),
    #usd = if (incl_usd) x@usd |> sum(),
    usd = x@usd |> sum(),
    water = if (incl_water) x@water |> sum(),
    carbohydrate = if (incl_carbohydrate) x@carbohydrate |> sum(),
    fiber = x@fiber |> sum(),
    sugar = x@sugar |> sum(), 
    addedSugar = x@addedSugar |> sum(), 
    fat = x@fat |> sum(), 
    cholesterol = x@cholesterol |> sum(),
    sodium = x@sodium |> sum(),
    chloride = x@chloride |> sum(),
    protein = x@protein |> sum(),
    alcohol = x@alcohol |> sum(),
    caffeine = x@caffeine |> sum()
  )
  if (!rel) return(z)
  return(z / x@servingGram)
}


