dir.create("datos/casen2022/")
options(timeout = max(300, getOption("timeout")))

#https://observatorio.ministeriodesarrollosocial.gob.cl/storage/docs/casen/2022/Base%20de%20datos%20Casen%202022%20STATA.dta.zip

# descargar base
download.file(url = "https://observatorio.ministeriodesarrollosocial.gob.cl/storage/docs/casen/2022/Base%20de%20datos%20Casen%202022%20STATA.dta.zip",
              destfile = "datos/casen2022/Casen2022.zip",
              method = "libcurl")

download.file(url = "https://observatorio.ministeriodesarrollosocial.gob.cl/storage/docs/casen/2022/Base%20de%20datos%20provincia%20y%20comuna%20Casen%202022%20STATA.dta.zip",
              destfile = "datos/casen2022/Casen2022comunal.zip",
              method = "libcurl")

# descomprimir
unzip(zipfile = "datos/casen2022/Casen2022.zip", exdir = "datos/casen2022/")
unzip(zipfile = "datos/casen2022/Casen2022comunal.zip", exdir = "datos/casen2022/")

file.remove("datos/casen2022/Casen2022.zip")

# descargar manual
download.file("https://observatorio.ministeriodesarrollosocial.gob.cl/storage/docs/casen/2022/Libro_de_Códigos_Base_Casen_2022_v20oct23.xlsx",
              destfile = "datos/casen2022/Libro_de_Códigos_Base_Casen_2022_v20oct23.xlsx")
download.file("https://observatorio.ministeriodesarrollosocial.gob.cl/storage/docs/casen/2022/Libro%20de%20codigos%20Base%20de%20datos%20provincia%20y%20comuna%20Casen%202022.xlsx",
              destfile = "datos/casen2022/Libro_de_codigos_Base_de_datos_provincia_y_comuna_Casen_2022.xlsx")

file.remove("datos/casen2022/__MACOSX")

