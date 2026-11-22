
#' @export
labels.nutrition <- \(object, ...) {
  c(
    object@alias |> 
      make_ansi_style('orchid4')(), 
    object@name, 
    object@brand |> 
      make_ansi_style('sienna')() |> 
      style_bold()
  ) |> # len-0 compatible!!
    paste(collapse = ' ') |>
    format_inline()
}


