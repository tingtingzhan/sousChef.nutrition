
expect_no_error(
  object = ls(
    pattern = '^Guittard_', 
    envir = asNamespace('sousChef.nutrition')
  ) |>
    as.list() |>
    do.call(what = 'nutritionlist', args = _) |>
    as.matrix() |> 
    lapply(
      FUN = sort_by, 
      x = _, 
      X = c('fat', 'sugar') |>
        setNames(nm = _)
    ) |>
    print()
)


expect_no_error(
  object = ls(
    pattern = '^Ghirardelli_', 
    envir = asNamespace('sousChef.nutrition')
  ) |>
    as.list() |>
    do.call(what = 'nutritionlist', args = _) |>
    as.matrix() |> 
    lapply(
      FUN = sort_by, 
      x = _, 
      X = c('fat', 'sugar') |>
        setNames(nm = _)
    ) |>
    print()
)


expect_no_error(
  object = ls(
    pattern = '^Ghirardelli_.*white$|^Guittard_.*white$|^Lindt_.*white$|^Callebaut_.*white$|^Valrhona_.*white$', 
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
)

