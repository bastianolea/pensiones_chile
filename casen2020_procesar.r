library(dplyr)

#preprocesar ----
ruta_casen2020 = "datos/casen2020/Casen en Pandemia 2020 STATA.dta" #ruta_casen2020 = "/mnt/volume_indice_collahuasi/Casen 2020/Casen en Pandemia 2020 STATA.dta"
casen2020_comunas <- readstata13::read.dta13(ruta_casen2020, convert.factors = FALSE, select.cols = "comuna")$comuna
casen2020_regiones <- readstata13::read.dta13(ruta_casen2020, convert.factors = FALSE, select.cols = "region")$region

#casen2020 <- arrow::read_parquet("/mnt/volume_indice_collahuasi/Casen 2020/casen_original.parquet") |> as_tibble() |> 
casen2020 <- readstata13::read.dta13(ruta_casen2020, generate.factors = T) |> dplyr::as_tibble() |> 
  dplyr::bind_cols("cut_comuna" = casen2020_comunas,
                   "cut_region" = casen2020_regiones)

arrow::write_parquet(casen2020, "datos/casen2020/casen2020.parquet")