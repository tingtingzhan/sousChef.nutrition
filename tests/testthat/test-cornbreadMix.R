
expect_no_error(
  object = nutritionlist(
    TraderJoes_cornbreadMix(),
    WholeFoods_cornbreadMix(),
    Krusteaz_southern_cornbreadMix(),
    BobsRedMill_cornbreadMix(),
    Stonewall_cornbreadMix(),
    Jiffy_cornMuffinMix(),
    Fleischmanns_cornbreadMix()
  ) |> 
    sort_by('sugar') |>
    print()
)
