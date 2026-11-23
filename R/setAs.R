

setAs(from = 'character', to = 'nutrition', def = \(from) {
  
  ns <- asNamespace('sousChef.nutrition')
  
  if (!exists(from, where = ns)) return(from)
  
  eval(call(name = from), envir = ns)
  
})


