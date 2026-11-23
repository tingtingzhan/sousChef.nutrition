

setAs(from = 'character', to = 'nutrition', def = \(from) {
  
  ns <- asNamespace('sousChef.nutrition')
  
  if (identical(from, make.names(from))) {
    if (!exists(from, where = ns)) return(from)
    return(eval(call(name = from), envir = ns))
  }
  
  eval(str2lang(from), envir = ns)
  
})


