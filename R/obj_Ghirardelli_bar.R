
Ghirardelli_white <- \() nutrition(
  name = 'White Chocolate, Bar', alias = '20%',
  # White Chocolate Contains at least 20% cocoa butter, 14% milk solids, and 3.5% milk fat. 
  ghirardelli = 'premium-baking-bar-white-chocolate-12-bars-61829cs',
  # 'premium-baking-bar-white-chocolate-bar-61829' # more updated?
  amazon = 'B01IRFB7CO', # usd = 34.44/12/113.5*14,
  target = '26393117', # usd = 4.79/113.5*14, date = as.Date('2026-11-21'),
  walmart = '14831473771', usd = 9.08/2/113.5*14, date = as.Date('2026-11-21'),
  servingGram = 14, 
  calorie = 80,
  fat = 4.5, sodium = .01, 
  carbohydrate = 9, sugar = 9, addedSugar = 7,
  url = 'https://www.ghirardelli.com/product-faqs')


Ghirardelli_semisweet <- \() nutrition(
  ghirardelli = 'semi-sweet-chocolate-baking-bar-61826',
  name = 'Semi-Sweet, Bar', alias = '\u70d8\u57f9\u5de7\u514b\u529b',
  usd = 42.95/12/8,
  servingGram = 14,
  calorie = 70,
  fat = 4.5, carbohydrate = 9, fiber = 1, sugar = 7, addedSugar = 7)


Ghirardelli_unsweet <- \() nutrition(
  ghirardelli = 'premium-100-cacao-unsweetened-chocolate-baking-bar-61828',
  name = 'Cacao, Bar', alias = '100%',
  usd = 8.95/8,
  servingGram = 14,
  calorie = 70,
  fat = 8, carbohydrate = 5, fiber = 2, protein = 2)


