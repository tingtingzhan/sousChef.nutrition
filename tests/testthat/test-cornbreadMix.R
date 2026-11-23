


expect_no_error(
  object = ls(pattern = '_cornbreadMix$|_cornMuffinMix$', envir = asNamespace('sousChef.nutrition')) |>
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

