

#' @title Replace Names
#' 
#' @param x ..
#' 
#' @note
#' nomenclature `dplyr::recode_values`, `dplyr::replace_values`
#' 
#' @name repl
#' @export
.repl <- \(x) {
  x[x == 'addedWater'] <- '+water'
  x[x == 'addedSugar'] <- '+sugar\n\u6dfb\u52a0\u7cd6'
  x[x == 'starch'] <- '+starch'
  x[x == 'carbohydrate'] <- 'carb' 
  x[x == 'sodium'] <- 'Na\u207a'
  x[x == 'cholesterol'] <- 'cholr'
  x[x == 'Na2CO3'] <- 'Na\u2082CO\u2083'
  x[x == 'NaHCO3'] <- 'NaHCO\u2083\n\u5c0f\u82cf\u6253'
  x[x == 'bakingPowder'] <- 'bkPwd\n\u6ce1\u6253\u7c89'
  x[x == 'pumpkinSpice'] <- '\U0001f383spice'
  x[x == 'breadFlr'] <- '\U0001f35eflr\n\u9ad8\u7b4b\u9762\u7c89'
  x[x == 'pastryFlr'] <- '\U0001f370flr\n\u4f4e\u7b4b\u9762\u7c89'
  x[x == 'eggYolk'] <- paste('\U0001f95ayolk', ansi_strip(eggYolk()@alias), sep = '\n')
  x[x == 'eggWhite'] <- paste('\U0001f95awhite', ansi_strip(eggWhite()@alias), sep = '\n')
  x[x == 'cornmeal'] <- '\U1f33d\n\u7389\u7c73\u9762'
  x[x == 'onion'] <- '\U1f9c5'
  x[x == 'ssmOil'] <- 'ssmOil\n\u829d\u9ebb\u6cb9'
  x[x == 'rattanPpOil'] <- 'rattanPpOil\n\u85e4\u6912\u6cb9'
  return(x)
}


#' @rdname repl
#' @export
.repl_names <- \(x) {
  names(x) <- names(x) |>
    .repl()
  return(x)
}
