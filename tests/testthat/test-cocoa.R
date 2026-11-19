
expect_no_error(
  object = nutritionlist(
    OrganicTraditions_cacao(),
    KingArthur_blackCocoa(),
    KingArthur_Burgundy_cocoa(),
    KingArthur_Bensdorp_cocoa(), 
    Ghirardelli_sunrise_cocoa(),
    Ghirardelli_majestic_cocoa(),
    Navitas_cacao()
  ) |> 
    sort_by('fat') |>
    print()
)
