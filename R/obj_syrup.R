

TraderJoes_date_syrup <- \() nutrition(
  brand = 'Trader Joe\'s', name = 'Date Syrup', alias = '\u7ea2\u67a3\u7cd6\u6d46',
  servingGram = 35, # to be confirmed
  servingTbsp = 2,
  calorie = 100,
  sodium = .01,
  carbohydrate = 28, sugar = 26)


TraderJoes_blueAgave_syrup <- \() nutrition(
  servingGram = 44.4, sugar = 30)


Crown_Bourbon_mapleSyrup <- \() nutrition(
  brand = style_hyperlink(text = 'Crown Maple', url = 'https://crownmaple.store/crown-maple-bourbon-barrel-aged-organic-maple-syrup-750ml-25-fl-oz/'),
  name = 'Maple\U1f341 Syrup, Bourbon\U1fab5', # lacks bourbon flavor!!!
  # full bottle 1700g; empty bottle xxx
  servingGram = 40, servingTbsp = 2, # serving_ml = 30, # (1700 - xxx) / 750 * 30
  sodium = .005, sugar = 24)

