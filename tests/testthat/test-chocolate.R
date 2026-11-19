

expect_no_error(
  object = nutritionlist(
    Guittard_bittersweet63(),
    Guittard_eclipse50(),
    Guittard_solitaire54(),
    Guittard_vanilla54(),
    Guittard_solitaire52(),
    Guittard_heritage39(),
    Guittard_Dutch34milk(),
    Guittard_31milk(),
    Guittard_heritage32milk(),
    Guittard_highSierra28white()
  ) |> 
    sort_by('fat') |>
    print()
)



