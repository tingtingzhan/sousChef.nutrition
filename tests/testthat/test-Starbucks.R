


expect_no_error(
  object = nutritionlist(
    Starbucks_caffeLatte(),
    Starbucks_mocha(),
    Starbucks_matchaLatte(),
    Starbucks_pumpkinSpiceLatte()
  ) |> 
    sort_by('sugar') |>
    print()
)


expect_no_error(
  object = nutritionlist(
    Starbucks_coffeeFrappuccino(),
    Starbucks_mochaFrappuccino(),
    Starbucks_pumpkinSpiceFrappuccino(),
    Starbucks_strawberryFrappuccino(),
    Starbucks_matchaFrappuccino(),
    StarbucksPepsiCo_coffeeFrappe(),
    StarbucksPepsiCo_mochaFrappe(),
    StarbucksPepsiCo_pumpkinSpiceFrappe(),
    StarbucksPepsiCo_0sugar_pumpkinSpiceFrappe()
  ) |> 
    sort_by('sugar') |>
    print()
)

