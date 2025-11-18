

library(tidyverse)
library(sf)
library(terra)

caminho_shp <- "C:\\projeto_inpi\\PA_Municipios_2024.shp"
mapa_pa <- read_sf(caminho_shp)

altamira <- mapa_pa %>% filter(NM_MUN == "Altamira")

plot(altamira$geometry, col="green", main="Altamira")

caminho_tif <- "C:\\projeto_inpi\\NE1_50M_SR_W.tif"

r_mundo = rast(caminho_tif)

plot(r_mundo, main="Imagem Base (Mundo)")

altamira_proj <- st_transform(altamira, crs(r_mundo))
r_cortado <- crop(r_mundo, altamira_proj)
r_mascarado <- mask(r_cortado, altamira_proj)

plot(r_mascarado, main = "Imagem Recortada de Altamira (PA)")
plot(st_geometry(altamira_proj), add=TRUE, border="black", lwd=2)
#writeRaster(r_mascarado, "altamira_satelite.tif", overwrite=TRUE)


