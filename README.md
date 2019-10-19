# nombres

<!-- badges: start -->
<!-- badges: end -->

El objetivo de nombres tener datos de nombres en espaniol de paises que hablen espaniol como principal lengua. 
Son bienvenidas contribuciones que vengan de fuentes oficiales de cada pais. Se entiende que no todos los paises tienen los mejores datos y se publicara lo que exista en los repositorios oficiales. 

Como primer pais va a ser Argentina. En el caso de argentina los datos obtenidos son obtenidos de la url a 2019-10-18

https://datos.gob.ar/dataset/otros-nombres-personas-fisicas/archivo/otros_2.1

lamebtablemetne todavia no vi como agregarle acentos y enies.


## Instalacion

``` r
# Version de desarrollo
devtools::install_github("jas1/nombres")

```

## Example


``` r
library(nombres)

nombres <- nombres_registrados_argentina

head(nombres)
tail(nombres)

```

