dir.create("datos/casen2020/")
options(timeout = max(300, getOption("timeout")))

#http://observatorio.ministeriodesarrollosocial.gob.cl/storage/docs/casen/2020/Casen_en_Pandemia_2020_STATA_revisada2022_09.dta.zip

# descargar base
download.file(url = "http://observatorio.ministeriodesarrollosocial.gob.cl/storage/docs/casen/2020/Casen_en_Pandemia_2020_STATA.dta.zip",
              destfile = "datos/casen2020/Casen_en_Pandemia_2020_STATA.dta.zip",
              method = "libcurl")

# descomprimir
unzip(zipfile = "datos/casen2020/Casen_en_Pandemia_2020_STATA.dta.zip", exdir = "datos/casen2020/")

file.remove("datos/casen2020/Casen_en_Pandemia_2020_STATA.dta.zip")

# descargar manual
download.file(url = "http://observatorio.ministeriodesarrollosocial.gob.cl/storage/docs/casen/2020/Libro_de_codigos_Base_de_Datos_Casen_en_Pandemia_2020.pdf",
              destfile = "datos/casen2020/Libro_de_codigos_Base_de_Datos_Casen_en_Pandemia_2020.pdf")

file.remove("datos/casen2020/__MACOSX")
