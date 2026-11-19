


expect_no_error(
  object = nutritionlist(
    Nancys_creamCheese(),
    Philadelphia_creamCheese(),
    OrganicValley_creamCheese(),
    TraderJoes_creamCheese(),
    Tillamook_creamCheese()
  ) |> 
    sort_by('fat') |>
    print()
)

expect_no_error(
  object = nutritionlist(
    Philadelphia_creamCheese(), 
    Philadelphia_creamCheeseSpread(), 
    Philadelphia_neufchatel(), 
    Philadelphia_neufchatelSpread()
  ) |> 
    sort_by('fat') |>
    print()
)

expect_no_error(
  object = nutritionlist(
    LandOLakes_whippedHeavyCream(),
    Lucerne_heavyCream(),
    Wegmans_heavyCream()
  ) |> print()
)

expect_no_error(
  object = nutritionlist(
    TraderJoes_goatKefir(), 
    Meyenberg_goatKefir()
  ) |> print()
)


expect_no_error(
  object = nutritionlist(
    Philadelphia_creamCheeseSpread(),
    Philadelphia_neufchatelSpread(),
    Wegmans_mozzarella_whole(),
    Wegmans_mozzarella_skim(),
    KraftNatural_mozzarella_fatFree()
  ) |> print()
)

