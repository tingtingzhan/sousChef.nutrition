

system.file('extR', 'Pocky.R', package = 'sousChef.nutrition') |>
  source()

expect_no_error(object = {
  nutritionlist(
    Pocky_matcha(),
    Pocky_double_matcha()
  ) |> 
    print()
})
