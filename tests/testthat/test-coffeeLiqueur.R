
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
  object = nutritionlist(
    Baileys_tiramisu_liqueur(),
    Baileys_espressoLiqueur(),
    Baileys_almande_liqueur(),
    Baileys_colada_liqueur(),
    Baileys_chocolatLuxe_liqueur(),
    Baileys_chocolate_liqueur(),
    Baileys_smores_liqueur(),
    Baileys_strawberry_liqueur(),
    Baileys_pumpkinSpice_liqueur()
  ) |> 
    sort_by('fat') |>
    print()
)

