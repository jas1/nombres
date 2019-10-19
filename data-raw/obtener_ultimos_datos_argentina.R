# obtener_ultimos_datos_argentina
#
# obtiene los ultimos datos publicados en la fuente de datos de argentina
# actualmente: https://infra.datos.gob.ar/catalog/otros/dataset/2/distribution/2.1/download/historico-nombres.zip

# inspirado en:
# https://github.com/hadley/babynames/blob/master/data-raw/names.R
#

library(dplyr)
library(reshape2)
library(readr)

if (!file.exists("data-raw/nombres")) {
    tmp <- tempfile(fileext = ".zip")
    download.file("https://infra.datos.gob.ar/catalog/otros/dataset/2/distribution/2.1/download/historico-nombres.zip", tmp, quiet = TRUE)
    unzip(tmp, exdir = "data-raw/nombres")
    unlink(tmp)
}

nombres_registrados_argentina <- readr::read_csv("data-raw/nombres/historico-nombres.csv") %>%
    mutate(anio=as.integer(anio),
           cantidad=as.integer(cantidad))

# readr::write_rds(x=nombres,path = "data/nombres_registrados_argentina.rds")
usethis::use_data(nombres_registrados_argentina, overwrite = TRUE)
