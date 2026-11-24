

expect_no_error(object = {
  nutritionlist(
    Sencha_matcha(),
    Kirkland_matcha(),
    Ippodo_ikuyo(),
    Ippodo_sayaka(),
    Marukyu_tenju()
  ) |>
    sort_by(c('usd')) |>
    print()
})
