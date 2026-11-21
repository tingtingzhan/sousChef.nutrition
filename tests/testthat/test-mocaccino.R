


expect_no_error(
  object = ls(pattern = '^Ghirardelli_.*frappe$', envir = asNamespace('sousChef.nutrition')) |>
    lapply(FUN = \(i) eval(call(name = i))) |>
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
  object = nutritionlist(
    Maxwell_mochaSuisse(),
    WilliamsSonoma_mocha_hotCocoa(),
    Godiva_milk_hotCocoa(),
    Godiva_hotCocoa(),
    KingArthur_milk_hotCocoa(),
    Nestle_skim_hotCocoa(),
    Nestle_rich_hotCocoa(),
    Nestle_supreme_hotCocoa(),
    SwissMiss_simplyCocoa_milk_hotCocoa(),
    SwissMiss_milk_hotCocoa(),
    Starbucks_hotCocoa(),
    Starbucks_Kcup_hotCocoa(),
    Starbucks_crema_chocolate()
  ) |> print()
) # compare commercial powders



expect_no_error(
  object = nutritionlist(
    Starbucks_mocha(),
    Starbucks_mochaFrappuccino(),
    StarbucksPepsiCo_mochaFrappe()
  ) |> print()
) # compare drink
