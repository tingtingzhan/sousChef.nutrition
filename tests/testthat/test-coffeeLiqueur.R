
expect_no_error(
  object = nutritionlist(
    Kahlua_coffeeLiqueur(),
    Kahlua_especial_coffeeLiqueur(),
    CafeGranita_coffeeLiqueur(),
    FratelliVincenzi_espressoLiqueur(),
    Kikisi_coffeeLiqueur(),
    CaffeBorghetti_espressoLiqueur(),
    Grind_espressoLiqueur(),
    Sabroso_coffeeLiqueur(),
    Patron_XO_coffeeLiqueur(),
    Padrino_coffeeLiqueur(),
    Amigos3_coffeeLiqueur()
  ) |> 
    sort_by('alcohol') |>
    print()
)


expect_no_error(
  object = ls(pattern = '^Baileys_', envir = asNamespace('sousChef.nutrition')) |>
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

