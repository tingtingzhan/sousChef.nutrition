

call2alias <- \(x) {
  if (!length(x@alias)) return(x)
  if (grepl(pattern = '\\.run', as.character(x@alias))) return(x) 
  
  x@alias <- x@alias |>
    .cli_run(
      pkg = 'sousChef.nutrition',
      fun = as.character(x@call)
    )
  return(x)
  
}



key2alias <- \(x) {
  
  xkey <- x |>
    key()
  
  if (!length(xkey)) return(x)
  # to prevent infinite recursion
  if (xkey == as.character(x@call)) return(x)
  
  if (exists(xkey, where = asNamespace('sousChef.spice'))) {
    z <- eval(call(name = xkey), envir = asNamespace('sousChef.spice'))
    if (is(z, 'spice')) {
      x@alias <- z@alias
    } # else do nothing
    return(x)
  } 
  
  if (xkey == 'sashimi') {
    if (!length(x@alias)) stop()
    x@alias <- paste(x@alias, '\u523a\u8eab')
    return(x)
  }
  
  if (length(x@alias)) return(x)
  
  x@alias <- switch(
    EXPR = xkey, 
    bakingPowder = '\u6ce1\u6253\u7c89',
    brownRice = '\u7384\u7c73/\u7cd9\u7c73',
    brownSugar = '\u7ea2\u7cd6',
    butter = '\u9ec4\u6cb9',
    cocoa =, cacao = '\u53ef\u53ef\u7c89',
    coffee = '\u901f\u6eb6\u5496\u5561',
    coffeeLiqueur =, espressoLiqueur = '\u5496\u5561\u9152',
    cookingWine =, Marsala =, Sherry = '\u6599\u9152',
    cornmeal = '\u7389\u7c73\u9762',
    creamCheese = '\u5976\u6cb9\u5976\u916a',
    curry = '\u5496\u55b1\u0b95\u0bb1\u0bbf',
    drymilk = '\u8131\u8102\u5976\u7c89',
    drywholemilk = '\u5168\u8102\u5976\u7c89',
    duck = '\u6574\u9e2d',
    gelatin = '\u5409\u5229\u4e01\u7247',
    ghee = '\u5370\u5ea6\u9165\u6cb9\u0918\u0943\u0924',
    goatKefir = '\u7f8a\u5976\u9152',
    heavyCream = '\u91cd\u5976\u6cb9',
    hotCocoa = '\u70ed\u53ef\u53ef\u51b2\u6ce1\u7c89',
    kefir = '\u5976\u9152',
    heavyCrean = '\u91cd\u5976\u6cb9',
    mapleSyrup = '\u67ab\u7cd6\u6d46',
    matcha = '\u62b9\u8336\u7c89',
    neufchatel = 'Neufcha\u0302tel\u4e73\u916a',
    pineapple = '\u83e0\u841d',
    rice = '\u7c73',
    saltedButter = '\u542b\u76d0\u9ec4\u6cb9',
    sourCream = '\u9178\u5976\u6cb9',
    soybean = '\u9ec4\u8c46',
    yeast = '\u9175\u6bcd',
    character()
  )
  
  return(x)
  
}




#' @importFrom consec cmod
fmt_vol <- \(x) {
  
  # @param x \linkS4class{nutrition}
  x_tsp <- x@servingTsp
  if (!length(x_tsp)) return(character())
  
  brick <- x@call |>
    as.character() |>
    grepl(pattern = '_butter$|_creamCheese$', x = _)
  
  x_tsp |>
    cmod(
      e2 = if (brick) consec::teaspoon2 else consec::teaspoon, 
      n = 3L, tol = 1e-6
    ) |>
    col_br_blue() |> 
    style_bold()
  
}


#' @importFrom equiv4 binlabel
fmt_perc <- \(x, name) {
  # @param x \linkS4class{nutrition}
  x_ <- slot(x, name = name)
  if (!length(x_) || (x_ == 0)) return(character())
  pct <- x_ / x@servingGram
  pct |> 
    binlabel(pct, accuracy = .1)() |> 
    make_ansi_style('olivedrab')() |> 
    style_bold()
}



#' @importFrom equiv4 binlabel
max_binlabel <- \(x, ...) {
  x |>
    binlabel(max(x, na.rm = TRUE), ...)()
}







add_brand_url <- \(x, name, ...) {
  v <- x[[name]]
  if (!length(v)) return(x)
  if (length(x$brand)) {
    stop('`brand` already exists!')
  }
  x$brand <- v |> 
    fmtURL(...)
  x[[name]] <- NULL
  return(x)
}



add_store_url <- \(x, name, fmt, store_brand, store_name = store_brand) {
  v <- x[[name]]
  if (!length(v)) return(x)
  store_url <- sprintf(fmt = fmt, v)
  if (!length(x$brand)) {
    if (is.na(store_brand)) stop('must have `store_brand`')
    x$brand <- style_hyperlink(url = store_url, text = store_brand)
  } else {
    x$url <- c(
      x$url, 
      style_hyperlink(url = store_url, text = paste('\U1f6d2', store_name))
    ) |>
      ansi_string()
  }
  x[[name]] <- NULL
  return(x)
}



append_url <- \(x, name, ...) {
  if (!length(x[[name]])) return(x)
  x$url <- c(
    x$url, 
    x[[name]] |> fmtURL(...)
  ) |>
    ansi_string()
  x[[name]] <- NULL
  return(x)
}




mergeUSD <- \(x, ...) {
  
  x$usd <- min(
    x$usd,
    x$jpy / 153.507,
    # x$jpy / quantmod::getQuote('USDJPY=X')$Last 
    # may cause devtools::check() error
    na.rm = TRUE
  ) |>
    suppressWarnings() # min(numeric()) # has warning
  
  if (is.infinite(x$usd)) x$usd <- NULL
  
  x$jpy <- NULL
  
  return(x)
  
}

