

expect_no_error(object = {
  nutritionlist(
    Bassetts_coffee(),
    Bassetts_pumpkin(),
    HaagenDazs_coffee(),
    Bassetts_matcha(),
    HaagenDazs_matcha(),
    maeda_matcha_icecream()
  ) |>
    sort_by('sugar') |>
    print()
})
