


expect_no_error(
  object = nutritionlist(
    Edward_coconutShrd(),
    Edward_lite_coconutShrd(),
    Edward_coconutFlr(),
    WegmansOrganic_coconutFlr(),
    AnthonysGoods_coconutFlr(),
    BobsRedMill_coconutFlr()
  ) |> 
    sort_by('fat') |>
    print()
)


expect_no_error(
  object = nutritionlist(
    Kara_coconutcream(),
    ThaiKitchen_coconutcream(),
    ThaiKitchen_coconutmilk(),
    ThaiKitchen_lite_coconutmilk(),
    Freenow_coconutBar(),
    Freenow_0sugar_coconutBar(),
    Luckin_coconutBar(),
    CalifiaFarms_coconutmilk(),
    PacificFoods_coconutBar(),
    CalifiaFarms_coconutBar(),
    Dream_coconutBar(),
    CoconutPalm_coconutmilk(),
    Silk_coconutmilk(),
    SoDelicious_coconutmilk(),
    CalifiaFarms_coconutmilkwater()
  ) |> 
    sort_by('fat') |>
    print()
)


