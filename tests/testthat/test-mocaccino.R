
expect_no_error(
  object = nutritionlist(
    Maxwell_mochaSuisse(),
    WilliamsSonoma_mocha_hotCocoa(),
    Ghirardelli_mochaFrappe(),
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
