



expect_no_error(object = {
  nutritionlist(
    Wegmans_pineapple(), 
    Libbys_pineapple(), 
    Dole_pineapple()
  ) |> 
    sort_by('sugar') |>
    print()
})
