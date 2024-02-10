# https://observatorio.ministeriodesarrollosocial.gob.cl/encuesta-casen-2015

dir.create("datos/casen2015/")

# descargar
download.file(url = "https://observatorio.ministeriodesarrollosocial.gob.cl/storage/docs/casen/2015/casen_2015_stata.rar",
              destfile = "datos/casen2015/casen_2015_stata.rar",
              method = "libcurl")

# descomprimir
system("unrar x datos/casen2015/casen_2015_stata.rar datos/casen2015/")

file.remove("datos/casen2015/casen_2015_stata.rar")

# # nueva metodología y factores de expansión
# download.file(url = "https://observatorio.ministeriodesarrollosocial.gob.cl/storage/docs/casen/2017/Casen2017_factorCenso2017_Nueva_Metodologia_calibracion_STATA.dta.zip",
#               destfile = "datos/casen2015/Casen2017_factorCenso2017_Nueva_Metodologia_calibracion_STATA.dta.zip",
#               method = "libcurl")
# 
# # descomprimir 
# unzip(zipfile = "datos/casen2015/Casen2017_factorCenso2017_Nueva_Metodologia_calibracion_STATA.dta.zip", exdir = "datos/")
# 
# # eliminar archivo comprimido
# file.remove("datos/casen2015/Casen2017_factorCenso2017_Nueva_Metodologia_calibracion_STATA.dta.zip")
