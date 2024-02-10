dir.create("datos/casen2017/")

# descargar
download.file(url = "https://observatorio.ministeriodesarrollosocial.gob.cl/storage/docs/casen/2017/casen_2017_stata.rar",
              destfile = "datos/casen2017/casen_2017_stata.rar",
              method = "libcurl")

# descomprimir
system("unrar x datos/casen2017/casen_2017_stata.rar datos/casen2017/")

file.remove("datos/casen2017/casen_2017_stata.rar")

# nueva metodología y factores de expansión
download.file(url = "https://observatorio.ministeriodesarrollosocial.gob.cl/storage/docs/casen/2017/Casen2017_factorCenso2017_Nueva_Metodologia_calibracion_STATA.dta.zip",
              destfile = "datos/casen2017/Casen2017_factorCenso2017_Nueva_Metodologia_calibracion_STATA.dta.zip",
              method = "libcurl")

# descomprimir 
unzip(zipfile = "datos/casen2017/Casen2017_factorCenso2017_Nueva_Metodologia_calibracion_STATA.dta.zip", exdir = "datos/casen2017/")

# eliminar archivo comprimido
file.remove("datos/casen2017/Casen2017_factorCenso2017_Nueva_Metodologia_calibracion_STATA.dta.zip")

file.remove("datos/casen2017/__MACOSX")
