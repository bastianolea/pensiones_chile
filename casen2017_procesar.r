library(dplyr)

#preprocesar ----
ruta_casen2017 = "datos/casen2017/Casen 2017.dta"

casen2017_comunas <- readstata13::read.dta13(ruta_casen2017, convert.factors = FALSE, select.cols = "comuna")$comuna
casen2017_regiones <- readstata13::read.dta13(ruta_casen2017, convert.factors = FALSE, select.cols = "region")$region

factor_expansion_nuevo <- readstata13::read.dta13("datos/casen2017/Casen2017_factorCenso2017_Nueva Metodología calibración STATA.dta")$expr_C2017_NM

casen2017 <- readstata13::read.dta13(ruta_casen2017) |> dplyr::as_tibble() |> 
  dplyr::bind_cols("cut_comuna" = casen2017_comunas,
                   "cut_region" = casen2017_regiones,
                   "expc_nm" = factor_expansion_nuevo)

# casen2017


#guardar
arrow::write_parquet(casen2017, "datos/casen2017nm.parquet")