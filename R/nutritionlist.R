


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
  # [summary.raw.]
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
    #lapply(FUN = .repl_names) |> # why error?
    do.call(what = 'rbind', args = _) # matrix
  
  class(ret) <- c('nutritionMatrix', class(ret)) |>
    unique.default()
  return(ret)
  
}




#' @importFrom charwidth row_fmt_matrix
#' @export
print.nutritionMatrix <- \(x, ...) {
  
  z <- x[, colMeans(x == 0) != 1, drop = FALSE] |>
    apply(MARGIN = 2L, FUN = max_binlabel, accuracy = .1, simplify = FALSE) |>
    do.call(what = 'cbind', args = _) # to make sure not getting a 'vector'
  
  colnames(z) <- colnames(z) |>
    .repl()
  
  z |>
    row_fmt_matrix() |>
    cat(sep = '\n')
  
  cat('\n')
  
  return(invisible())
  
}







