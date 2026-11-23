

Edward_lite_coconutShrd <- \() nutrition(
  edwardandsons = 'lets-do-organic/products/lets-do-organic-reduced-fat-shredded-coconut',
  name = 'Shredded Coconut\U1f965, Less Fat', alias = '\u51cf\u8102\u6930\u84c9',
  usd = 3.89/250*16,
  servingGram = 16, 
  servingTbsp = 4, # packaging
  calorie = 90,
  fat = 7, sodium = .005, carbohydrate = 7, sugar = 1, protein = 1,
  superior = 'WegmansOrganic_coconutFlr',
  cons = 'Too coarse, do not buy!'
)


Edward_coconutShrd <- \() nutrition(
  edwardandsons = 'lets-do-organic/products/organic-shredded-coconut',
  alias = '\u6930\u84c9', name = 'Shredded Coconut\U1f965',
  usd = 3.89/227*15,
  servingGram = 15, 
  servingTbsp = 2.5, # packaging
  calorie = 100,
  fat = 10, sodium = .005, carbohydrate = 4, sugar = 1, protein = 1,
  superior = 'WegmansOrganic_coconutFlr',
  cons = 'Too coarse, do not buy!')

Edward_coconutFlr <- \() nutrition(
  edwardandsons = 'lets-do-organic/products/lets-do-organic-coconut-flour',
  name = 'Coconut\U1f965 Flour',
  usd = 5.99/454*14,
  servingGram = 14, 
  servingTbsp = 2, # packaging
  calorie = 60,
  fat = 2, sodium = .005, carbohydrate = 9, sugar = 1, protein = 2)


BobsRedMill_coconutFlr <- \() nutrition(
  bobsredmill = 'organic-coconut-flour',
  name = 'Coconut\U1f965 Flour',
  servingGram = 14, 
  servingTbsp = 2, # packaging
  calorie = 60,
  fat = 1.5, sodium = .01, carbohydrate = 9, sugar = 3, protein = 3)


AnthonysGoods_coconutFlr <- \() nutrition(
  url = 'anthonysgoods.com/products/anthonys-organic-coconut-flour-4lb',
  brand = 'Anthony\'s Goods', 
  name = 'Coconut\U1f965 Flour',
  usd = 18.99/1810*14,
  servingGram = 14,
  servingTbsp = 2, # packaging
  calorie = 60,
  fat = 2, sodium = .01, carbohydrate = 8, sugar = 2, protein = 2)


WegmansOrganic_coconutFlr <- \() nutrition(
  wegmans = '52175', usd = 3.79/454*14,
  name = 'Coconut\U1f965 Flour',
  servingGram = 14, 
  #servingTbsp = 2, # packaging
  servingTbsp = 14/(66*2) * 16, # actual experiment: 66g = 1/2 cup
  calorie = 60,
  fat = 2, sodium = .01, carbohydrate = 8, sugar = 1, protein = 2,
  pros = 'has tremendous water obsorbancy')




ThaiKitchen_lite_coconutmilk <- \() nutrition(
  thaikitchen = 'thai-kitchen-lite-coconut-milk-25-36-fl-oz',
  name = 'Coconutmilk\U1f965, Lite', alias = '\u4f4e\u8102\u6930\u6d46',
  acme = '960524083', # no price?
  # fullweight = 475, emptyweight = 59, # tin can
  servingGram = (475-59)/403*80, serving_ml = 80,
  calorie = 50,
  fat = 5, sodium = .02, carbohydrate = 1, sugar = 1)


ThaiKitchen_coconutmilk <- \() nutrition(
  thaikitchen = 'thai-kitchen-coconut-milk-25-36-fl-oz',
  name = 'Coconutmilk\U1f965', alias = '\u6930\u6d46',
  costco = '100452749', usd = (12.99/6)/403*80, date = as.Date('2026-11-04'),
  # fullweight = ??, emptyweight = ??, 
  servingGram = (475-59)/403*80, serving_ml = 80,
  calorie = 120,
  fat = 12, sodium = .03, carbohydrate = 2, sugar = 1)


ThaiKitchen_coconutcream <- \() nutrition(
  thaikitchen = 'thai-kitchen-unsweetened-coconut-cream-6-pack',
  name = 'Coconut\U1f965 Cream', alias = '\u6930\u8102',
  wegmans = '617872', usd = 5.99/403*80,
  # fullweight = ??, emptyweight = ??, 
  servingGram = 30, serving_ml = 30, # guessed weight
  calorie = 60,
  fat = 6, carbohydrate = 1, sugar = 1, sodium = .01)


Kara_coconutcream <- \() nutrition(
  name = 'Coconut\U1f965 Cream', alias = '\u6930\u8102',
  brand = style_hyperlink(text = 'Kara\U1f1ee\U1f1e9', url = 'https://kara-coconut.com/cn/product/uht-coconut-cream/'),
  usd = 1.89/200*15, # https://www.yamibuy.com/zh/p/kara-coconut-cream-200ml/1020034401 # out of stock right now
  servingGram = 15, serving_ml = 15, # guessed weight
  calorie = 35,
  fat = 3.5)





# coconutmilk fdc water 94.57%
# fdc = 1097553L

Silk_coconutmilk <- \() nutrition(
  brand = style_hyperlink(url = 'https://silk.com/plant-based-products/coconutmilk/unsweet-coconutmilk/', text = 'Silk\U1f1fa\U1f1f8'), 
  name = 'Coconutmilk\U1f965', alias = '\u6930\u5976',
  target = 'A-15423909', usd = 4.99/8,
  servingGram = 240, servingCup = 1, 
  water = 240*.9457,
  calorie = 40, 
  fat = 4, sodium = .045, carbohydrate = 2)

SoDelicious_coconutmilk <- \() nutrition(
  name = 'Coconutmilk\U1f965', alias = '\u6930\u5976',
  brand = style_hyperlink(text = 'So Delicious\U1f1fa\U1f1f8', url = c(
    # 'https://sodeliciousdairyfree.com/dairy-free-foods/plant-based-beverages/coconutmilk/organic-unsweetened-original-32oz' # shelf stable
    'https://sodeliciousdairyfree.com/dairy-free-foods/plant-based-beverages/coconutmilk/organic-unsweetened-original-64oz' # need to chill
  )),
  wegmans = '356837', usd = 5.29/64*8, # need to chill
  # walmart = '667624971', # usd = 2.68/4, # shelf-stable
  # costco = '100449940', usd = 12.99/6/4, # shelf-stable 32 oz, 6-Count
  servingGram = 240, servingCup = 1, 
  water = 240*.9457,
  calorie = 45,
  fat = 4, sodium = .01,
  cons = c(
    'too much thickener',
    'almost no coconut flavor'
  ))



CalifiaFarms_coconutmilkwater <- \() nutrition(
  name = 'Coconut\U1f965 Milk & Water Blend', alias = '\u6930\u5976',
  brand = style_hyperlink(text = 'Califia Farms\U1f1fa\U1f1f8', url = 'https://www.califiafarms.com/products/go-coconuts-coconutmilk/'),
  wegmans = '978006', usd = 4.29/48*8,
  servingGram = 240, servingCup = 1,
  calorie = 45,
  fat = 4, sodium = .140, carbohydrate = 2, sugar = 1,
  cons = c(
    'too much thickener',
    'almost no coconut flavor'
  ))




CoconutPalm_coconutmilk <- \() nutrition(
  name = 'Coconutmilk\U1f965', alias = '\u6930\u5976',
  brand = style_hyperlink(text = '\u6930\u6811Coconut Palm\U1f1e8\U1f1f3', url = 'http://www.yeshu.com/guoyan/liucheng.html'),
  # https://www.yamibuy.com/zh/p/coconut-oalm-brand-coconut-juice-1l/1020035561
  servingGram = 250, servingCup = 1, 
  calorie = 120,
  fat = 5, sodium = .03, carbohydrate = 17, addedSugar = 17, protein = 1)


CalifiaFarms_coconutmilk <- \() nutrition(
  name = 'Coconutmilk\U1f965', alias = '\u6930\u5976',
  brand = style_hyperlink(text = 'Califia Farms\U1f1fa\U1f1f8', url = 'https://www.califiafarms.com/products/organic-coconutmilk/'),
  target = 'A-92783096', usd = 6.39/48*8, date = as.Date('2026-11-04'),
  servingGram = 240, servingCup = 1,
  calorie = 90,
  fat = 8, sodium = .080, carbohydrate = 3, sugar = 2)

