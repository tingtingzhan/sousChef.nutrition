
Oreo <- \() nutrition(
  oreo = 'oreo-cookie', name = 'Oreo',
  wegmans = '902920', usd = 4.49/15, date = as.Date('2026-09-17'),
  servingGram = 34, 
  calorie = 160,
  fat = 7, sodium = .13, carbohydrate = 25, fiber = 1, sugar = 14, addedSugar = 13, protein = 1)

Oreo_thins <- \() nutrition(
  oreo = 'oreo-thins-original-cookies',
  name = 'Oreo Thins',
  wegmans = '927296', usd = 4.99/12, date = as.Date('2026-09-17'),
  servingGram = 29, 
  calorie = 140,
  fat = 6, sodium = .095, carbohydrate = 21, fiber = 1, sugar = 12, addedSugar = 12, protein = 1)

Oreo_thins_tiramisu <- \() nutrition(
  oreo = 'tiramisu',
  name = 'Oreo Thins, Tiramisu',
  # not on Wegmans website right now
  acme = '970587618', usd = 5.49/12, date = as.Date('2026-09-17'),
  servingGram = 29, 
  calorie = 140,
  fat = 6, sodium = .095, carbohydrate = 21, fiber = 1, sugar = 11, addedSugar = 11, protein = 1,
  pros = 'I love!!')

Oreo_thins_lemon <- \() nutrition(
  oreo = 'oreo-thins-lemon-cookies',
  name = 'Oreo Thins, Lemon\U1f34b',
  wegmans = '927299', usd = 4.99/13, date = as.Date('2026-09-17'),
  servingGram = 29, 
  calorie = 140,
  fat = 6, sodium = .095, carbohydrate = 21, sugar = 11, addedSugar = 11, protein = 1,
  pros = 'not bad')


Oreo_thins_mint <- \() nutrition(
  oreo = 'oreo-thins-mint-cookies',
  name = 'Oreo Thins, Mint',
  wegmans = '927292', usd = 4.99/12, date = as.Date('2026-09-17'),
  servingGram = 29, 
  calorie = 140,
  fat = 6, sodium = .095, carbohydrate = 21, fiber = 1, sugar = 12, addedSugar = 12, protein = 1,
  cons = 'mint flavor too strong for me!')

# NOT using full Oreo as cheesecake crust :)))
# https://youtu.be/1h7RCGoZKG8?t=322

