

# ?base::order is *not* S3-generic!!

#' @export
sort_by.nutritionlist <- \(x, y, ...) {
  # `y` is \link[base]{character} scalar
  m <- x |>
    as.matrix.nutritionlist()
  
  o <- order(m[, y], ...)
  
  x[o] |>
    do.call(what = 'nutritionlist', args = _)
  # note that only [summary.nutrition()] will be activated!!
  # input is no longer \linkS4class{recipe} nor \linkS4class{ingredient} !!!
}



#' @export
sort_by.nutritionMatrix <- \(x, y, decreasing = FALSE, ...) {
  
  if (!is.character(y)) stop('sort-criterion must be character')
  if (length(y) != 1L) stop('sort-criterion must be scalar')
  if (is.na(y) || !nzchar(y)) stop('illegal sort-criterion')
  
  z <- x[order(x[, y], decreasing = decreasing, ...), , drop = FALSE]
  
  # shame cannot do the same for [sort_by.nutritionlist()] !
  id <- which(y == colnames(z))
  arr <- character(length = ncol(z))
  arr[id] <- ifelse(decreasing, yes = '\u2b07\ufe0f', no = '\u2b06\ufe0f')
  
  class(z) <- class(x)
  attr(z, which = 'arr') <- arr
  return(z)
  
}


