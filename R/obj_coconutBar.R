
Freenow_0sugar_coconutBar <- \() nutrition(
  name = 'Barista Coconutmilk\U1f965, No Sugar',
  brand = style_hyperlink(text = '\u83f2\u8bfaFreeNow\U1f1e8\U1f1f3', url = 'https://www.freenowmilk.com/sys-por/6.html'),
  yamibuy = '26796422', usd = 6.29/1e3*1e2,
  servingGram = 100, serving_ml = 100, # guess
  calorie = 70,
  fat = 5.6, sodium = .081, carbohydrate = 3.9, protein = 1.1,
  contain = c('erythritol'),
  superior = 'Freenow_coconutBar',
  cons = 'too sweet (too much sugar alchohol)')



Freenow_coconutBar <- \() nutrition(
  name = 'Barista Coconutmilk\U1f965',
  brand = style_hyperlink(text = '\u83f2\u8bfaFreeNow\U1f1e8\U1f1f3', url = 'https://www.freenowmilk.com/sys-por/5.html'),
  weee = '89394', usd = 6.49/980*240, date = as.Date('2026-11-04'), 
  # yamibuy = '1020074911',
  servingGram = 240, serving_ml = 240, # guess
  calorie = 110/30*240,
  water = 240 - 15 - 15 - 5,
  fat = 15, sodium = .23, carbohydrate = 15, fiber = 1, sugar = 13, addedSugar = 11, protein = 3)



Luckin_coconutBar <- \() nutrition(
  name = 'Barista Coconutmilk\U1f965',
  brand = style_hyperlink(text = '\u745e\u5e78\U1f1e8\U1f1f3', url = 'https://www.luckincoffee.com'),
  weee = '106361', usd = 4.49/3/600*100,
  servingGram = 100, serving_ml = 100, # guess
  calorie = 80,
  fat = 5, sodium = .110, carbohydrate = 6, addedSugar = 2, protein = 1,
  superior = 'Freenow_coconutBar',
  cons = 'too sweet')




PacificFoods_coconutBar <- \() nutrition(
  name = 'Barista Coconutmilk\U1f965',
  brand = style_hyperlink(text = 'Pacific Foods\U1f1fa\U1f1f8', url = 'https://www.pacificfoodservice.com/barista-series/coconut-original/'),
  webstaurant = '110PFBARCCNT', usd = 46.49/12/32*8, date = as.Date('2026-10-23'),
  servingGram = 240, servingCup = 1,
  calorie = 90,
  fat = 5, sodium = .125, carbohydrate = 10, sugar = 9, addedSugar = 8, protein = 1)


CalifiaFarms_coconutBar <- \() nutrition(
  name = 'Barista Coconutmilk\U1f965',
  brand = style_hyperlink(text = 'Califia Farms\U1f1fa\U1f1f8', url = 'https://www.califiafarms.com/products/coconut-barista-blend/'),
  wholefoods = 'b0c6hdj3d5', # usd = 5.29/32*8,
  webstaurant = '110CFACCOBAR', usd = 42.99/12/32*8, date = as.Date('2026-11-04'),
  servingGram = 240, servingCup = 1,
  calorie = 80,
  fat = 5, sodium = .110, carbohydrate = 9, sugar = 7, addedSugar = 5, protein = 1)


Dream_coconutBar <- \() nutrition(
  name = 'Barista Coconutmilk\U1f965',
  dreambarista = 'coconutmilk-barista',
  foodservicedirect = '257884', usd = 48.95/12/32*8, date = as.Date('2026-11-04'),
  servingGram = 240, servingCup = 1,
  calorie = 90,
  fat = 5, sodium = .14, carbohydrate = 10, addedSugar = 9, protein = 1)

