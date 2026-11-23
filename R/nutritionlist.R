


#' @title \link[base]{list} of \linkS4class{nutrition}s
#' 
#' @description
#' ..
#' 
#' @param ... objects convertible to \linkS4class{nutrition}
#' 
#' @export
nutritionlist <- \(...) {
  
  x <- list(...)
  
  z <- x |>
    lapply(FUN = as, Class = 'nutrition')
  
  if (!all(vapply(z, FUN = is, class2 = 'nutrition', FUN.VALUE = NA))) {
    stop('a')
  } 
  
  sumx <- x |>
    lapply(FUN = summary)
  # [summary.nutrition]
  # [summary.ingredient]
  # [summary.recipe]
  
  nm <- z |>
    vapply(FUN = labels.nutrition, FUN.VALUE = '')
  names(z) <- names(sumx) <- nm
  attr(z, which = 'sumx') <- sumx # think of a better way to pass this info to downstream functions?
  
  class(z) <- c('nutritionlist', 'listof', 'list') 
  return(z)
  
}



#' @importFrom equiv4 equivlist
#' @export
print.nutritionlist <- \(x, ...) {
  
  'Nutrition' |> 
    bg_br_yellow() |> 
    cat('\n', . = _, '\n', sep = '')
  
  x |>
    as.matrix.nutritionlist(...) |>
    print.nutritionMatrix()

  sumx <- x |>
    attr(which = 'sumx')
  
  pers <- sumx |>
    lapply(FUN = names) |>
    unlist(use.names = FALSE) |>
    unique.default()
    
  for (which in pers) {
    sumx |>
      lapply(FUN = \(i) {
        z <- i[[which]]
        if (!length(z)) return(invisible())
        z |>
          .repl_names()
      }) |>
      do.call(what = 'equivlist', args = _) |>
      print(fmt_caption = '\u214c %s') # equiv4:::print.equivlist
  }
  
  return(invisible())
  
}





#' @method as.matrix nutritionlist
#' @export
as.matrix.nutritionlist <- \(x, ...) {
  
  ret <- x |> 
    lapply(FUN = as, Class = 'nutrition') |> # make double sure
    lapply(FUN = as.double.nutrition, ...) |>
    do.call(what = 'rbind', args = _) # matrix
  
  class(ret) <- c('nutritionMatrix', class(ret)) |>
    unique.default()
  return(ret)
  
}




#' @importFrom charwidth row_fmt_matrix
#' @export
print.nutritionMatrix <- \(x, ...) {

  id_calorie <- which(colnames(x) == 'calorie')
  id_usd <- which(colnames(x) == 'usd')
  id <- colnames(x) %notin% c('calorie', 'usd')
  
  colnames(x) <- colnames(x) |>
    .repl()
  
  arr <- x |>
    attr(which = 'arr', exact = TRUE)
  if (length(arr)) {
    colnames(x) <- colnames(x) |>
      paste(arr, sep = '\n')
  }
  
  z <- array(NA_character_, dim = dim(x), dimnames = dimnames(x))
  
  z[,id_usd] <- (x[,id_usd] * 1e2) |>
    sprintf(fmt = '%.1f')
  
  z[,id_calorie] <- x[,id_calorie] |>
    sprintf(fmt = '%.1f')
  
  z[,id] <- x[, id, drop = FALSE] |>
    apply(MARGIN = 2L, FUN = max_binlabel, accuracy = .1, simplify = FALSE) |>
    do.call(what = 'cbind', args = _) # to make sure not getting a 'vector'
  
  all0 <- (colMeans(x == 0) == 1)
  z[, !all0, drop = FALSE] |>
    row_fmt_matrix() |>
    cat(sep = '\n')
  
  cat('\n')
  
  return(invisible())
  
}







