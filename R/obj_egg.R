
# https://en.wikipedia.org/wiki/Chicken_egg_sizes
eggYolk <- \(size = c('large', 'extralarge', 'jumbo')) {
  size <- match.arg(size)
  nutrition(
    name = switch(size, large = 'Large', extralarge = 'Extra Large', jumbo = 'Jumbo') |>
      sprintf(fmt = 'Egg\U1f95a Yolk, %s'), 
    alias = '\u9e21\u86cb\u9ec4',
    wegmans = switch(size, large = '46155', extralarge = '22333', jumbo = '28999'), 
    usd = switch(size, large = 2.19/18, extralarge = 5.29/12, jumbo = 2.09/12)/20*100,
    date = as.Date('2026-10-07'),
    pieceGram = switch(size, large = 50, extralarge = 56, jumbo = 62.5) * .4, 
    piece_fmt = '%.1f\U1f95a',
    fdc = 172184L, servingGram = 100,
    calorie = 322,
    water = 52.3, protein = 15.9, 
    fat = 26.5, cholesterol = 1.08, sugar = .56, sodium = .048
  )
}


eggWhite <- \(size = c('large', 'extralarge', 'jumbo')) {
  size <- match.arg(size)
  nutrition(
    name = switch(size, large = 'Large', extralarge = 'Extra Large', jumbo = 'Jumbo') |>
      sprintf(fmt = 'Egg\U1f95a Yolk, %s'), 
    alias = '\u9e21\u86cb\u6e05',
    wegmans = switch(size, large = '46155', extralarge = '22333', jumbo = '28999'), 
    usd = switch(size, large = 2.19/18, extralarge = 5.29/12, jumbo = 2.09/12)/20*100,
    date = as.Date('2026-10-07'),
    # usd = 8.39/24/30*100, # costco warehouse; more expensive?
    pieceGram = switch(size, large = 50, extralarge = 56, jumbo = 62.5) * .6, 
    piece_fmt = '%.1f\U1f95a',
    fdc = 172183L, servingGram = 100,
    calorie = 52,
    water = 87.6, protein = 10.9, 
    fat = .17, sugar = .71, sodium = .166)
}

#egg <- \(...) { # works :)
egg <- \(size = c('large', 'extralarge', 'jumbo')) {
  size <- match.arg(size)
  c(
    #eggYolk(...) + eggWhite(...), # works :) but `name` requires `size`
    eggYolk(size = size) + eggWhite(size = size),
    list(
      call = quote(quote(quote(egg))), # wow..
      name = switch(size, large = 'Large', extralarge = 'Extra Large', jumbo = 'Jumbo') |>
        sprintf(fmt = 'Egg\U1f95a, %s'),
      alias = '\u9e21\u86cb'
    )
  ) |>
    do.call(what = 'nutrition', args = _)
}


salted_duck_eggYolk <- \() nutrition(
  url = 'https://nutriscan.app/calories-nutrition/salted-egg-yolk',
  name = 'Salted Duck Egg\U1f95a Yolk', 
  alias = '\u54b8\u86cb\u9ec4',
  servingGram = 100, 
  pieceGram = 20, piece_fmt = '%.1f\U1f95a',
  calorie = 275,
  fat = 22.9,
  cholesterol	= .912, sodium = 10.461, 
  carbohydrate = 1.8,
  protein = 14.1
)
