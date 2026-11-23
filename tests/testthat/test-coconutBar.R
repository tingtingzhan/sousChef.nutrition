

expect_no_error(object = {
  object = ls(
    pattern = '_coconutBar$', 
    envir = asNamespace('sousChef.nutrition')
  ) |>
    as.list() |>
    do.call(what = 'nutritionlist', args = _) |>
    as.matrix() |> 
    lapply(
      FUN = sort_by, 
      x = _, 
      X = c('fat', 'sugar', 'usd') |>
        setNames(nm = _)
    ) |>
    print()
})
