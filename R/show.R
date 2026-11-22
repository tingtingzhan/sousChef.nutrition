

#' @rdname nutrition-class
#' @param object a \linkS4class{nutrition} object
#' @export
setMethod(f = show, signature = 'nutrition', definition = \(object) print.nutrition(object))


#' @importFrom consec cmod
#' @export
print.nutrition <- \(x, prt_label = TRUE, ...) {
  
  if (prt_label) {
    cat('\n')
    x |>
      labels.nutrition() |>
      style_bold() |> 
      cat('\n\n')
  }
  
  sprintf(
    fmt = 'Serving Size %s %s %s\n', 
    x@servingGram |> 
      sprintf(fmt = '%.4g grams') |> 
      make_ansi_style('purple')() |> 
      style_bold(), 
    (x@servingGram/28.3495) |> 
      sprintf(fmt = '%.1f oz') |> 
      make_ansi_style('seagreen')() |> 
      style_bold(),
    if (identical(x@call, quote(asMethod))) {
      # legacy: from as(., Class = 'nutrition)
      stop('wont happen')
    } else if (identical(x@call, quote(`<UNDEFINED>`))) {
      ''
    } else {
      fmt_vol(x) %||% ''
    }
  ) |> cat()
  
  if (length(x@water) && length(x@servingGram) && (x@water / x@servingGram > .9)) {
    x@servingGram |>
      cmod(e2 = consec::floz, n = 2L, tol = 1e-6) |>
      make_ansi_style('seagreen')() |> 
      style_bold() |>
      sprintf(fmt = 'Water Equivalency %s\n') |> 
      cat()
  }
  
  cat('\n')
  
  if (length(x@usd)) {
    usd_txt <- x@usd |> 
      sprintf(fmt = '\U1f4b5%.2f') |> 
      col_green() |> style_bold() |>
      sprintf(fmt = 'US %s', . = _)
    if (is.na(x@date)) {
      usd_txt |> 
        cat('\n')
    } else {
      x@date |>
        #as.character() |> # no need
        make_ansi_style('grey70')() |>
        sprintf(fmt = '%s  \U0001f5d3\ufe0f%s', usd_txt, . = _) |> 
        cat('\n')
    }
  }         
  
  if (length(x@calorie)) {
    cat('Calories', x@calorie |> sprintf(fmt = '\U1f525%.0f') |> col_br_red() |> style_bold(), '\n')
  }
  
  cat('\n')
  
  sprintf(
    fmt = '%s %.1f grams %s\n', 
    'Water' |> 
      make_ansi_style('slateblue3')() |> 
      style_bold(),
    x@water, 
    fmt_perc(x, 'water')
  ) |> cat()
  
  sprintf(
    fmt = '%s %.1f grams %s\n', 
    'Fat' |> 
      make_ansi_style('slateblue3')() |> 
      style_bold(),
    x@fat, 
    fmt_perc(x, 'fat')
  ) |> cat()
  
  if (length(x@cholesterol)) {
    if (x@cholesterol > 1) {
      sprintf(
        fmt = '%s %.1f grams %s\n', 
        'Cholesterol' |> 
          make_ansi_style('slateblue3')() |> 
          style_bold(),
        x@cholesterol, 
        fmt_perc(x, 'cholesterol')
      ) |> cat()
    } else {
      sprintf(
        fmt = '%s %.0f milligrams %s\n', 
        'Cholesterol' |> 
          make_ansi_style('slateblue3')() |> 
          style_bold(),
        1e3 * x@cholesterol, 
        fmt_perc(x, 'cholesterol')
      ) |> cat()
    }
  }
  
  if (length(x@sodium)) {
    if (x@sodium > 1) {
      sprintf(
        fmt = '%s %.1f grams %s\n',
        'Sodium Na\u207A' |> 
          make_ansi_style('slateblue3')() |> 
          style_bold(),
        x@sodium, 
        fmt_perc(x, 'sodium')
      ) |> cat()
    } else {
      sprintf(
        fmt = '%s %.0f milligrams %s\n', 
        'Sodium Na\u207A' |> 
          make_ansi_style('slateblue3')() |> 
          style_bold(),
        1e3 * x@sodium, 
        fmt_perc(x, 'sodium')
      ) |> cat()
    }
  }
  
  if (length(x@chloride)) {
    if (x@chloride > 1) {
      sprintf(
        fmt = '%s %.1f grams %s\n',
        'Chloride Cl\u207b' |> 
          make_ansi_style('slateblue3')() |> 
          style_bold(),
        x@chloride, 
        fmt_perc(x, 'chloride')
      ) |> cat()
    } else {
      sprintf(
        fmt = '%s %.0f milligrams %s\n', 
        'Chloride Cl\u207b' |> 
          make_ansi_style('slateblue3')() |> 
          style_bold(),
        1e3 * x@chloride, 
        fmt_perc(x, 'chloride')
      ) |> cat()
    }
  }
  
  sprintf(
    fmt = '%s %.1f grams %s\n', 
    'Total Carbohydrate' |> 
      make_ansi_style('slateblue3')() |> 
      style_bold(),
    x@carbohydrate, 
    fmt_perc(x, 'carbohydrate')
  ) |> cat()
  
  sprintf(
    fmt = ' \u21ac %s %.1f grams %s\n', 
    'Dietary Fiber' |> 
      make_ansi_style('slateblue3')() |> 
      style_bold(),
    x@fiber, 
    fmt_perc(x, 'fiber')
  ) |> cat()
  
  sprintf(
    fmt = ' \u21ac %s %.1f grams %s\n', 
    'Sugar' |> 
      make_ansi_style('slateblue3')() |> 
      style_bold(),
    x@sugar, 
    fmt_perc(x, 'sugar')
  ) |> cat()
  
  sprintf(
    fmt = ' \u21ac %s %.1f grams %s\n',
    'Added Sugar' |> 
      make_ansi_style('slateblue3')() |> 
      style_bold(),
    x@addedSugar, 
    fmt_perc(x, 'addedSugar')
  ) |> cat()
  
  sprintf(
    fmt = '%s %.1f grams %s\n', 
    'Protein' |> 
      make_ansi_style('slateblue3')() |> 
      style_bold(),
    x@protein, 
    fmt_perc(x, 'protein')
  ) |> cat()
  
  sprintf(
    fmt = '%s %.1f grams %s\n', 
    'Alcohol' |> 
      make_ansi_style('slateblue3')() |> 
      style_bold(),
    x@alcohol, 
    fmt_perc(x, 'alcohol')
  ) |> cat()
  
  sprintf(
    fmt = '%s %.1f grams %s\n', 
    'Caffeine' |> 
      make_ansi_style('slateblue3')() |> 
      style_bold(),
    x@caffeine, 
    fmt_perc(x, 'caffeine')
  ) |> cat()
  
  cat('\n')
  
  if (length(x@superior)) {
    .cli_run(
      text = x@superior |> make_ansi_style('sienna')() |> style_bold(),
      pkg = 'sousChef',
      fun = x@superior
    ) |>
      paste(collapse = ', ') |>
      c('\u274c I prefer ', . = _) |>
      format_inline() |>
      cat()
    cat('\n\n')
  } 
  
  x@pros |> 
    sprintf(fmt = '\U1f389 %s\n') |> 
    cat(sep = '')
  if (length(x@pros)) cat('\n')
  
  x@cons |> 
    sprintf(fmt = '\U1f940 %s\n') |> 
    cat(sep = '')
  if (length(x@cons)) cat('\n')
  
  if (length(x@contain)) {
    x@contain |>
      tolower() |>
      vapply(FUN = \(i) {
        if (exists(i, where = asNamespace('sousChef.spice'))) {
          eval(call(name = i), envir = asNamespace('sousChef.spice')) |> # dont use [eval_()] yet
            format() # sousChef.spice:::format.spice, etc.
        } else i
      }, FUN.VALUE = '') |>
      paste(collapse = ' ') |> 
      sprintf(fmt = 'Contains %s\n\n') |> 
      cat()
  }
  
  
  if (length(x@url)) {
    cat(x@url, sep = '\n')
    cat('\n')
  }
  
  #suggested_ <- x |> 
  #  as(Class = 'ingredient')
  #if (length(suggested_)) {
  #  show(suggested_) # I have not defined a NULL \linkS4class{ingredient}
  #  cat('\n')
  #} # user must do it manually after library(sousChef)
  
  x@tool |>
    lapply(FUN = show)
  
}
