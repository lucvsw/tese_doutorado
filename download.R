# Pacotes necessários
library(raster)

# Vetor com os anos
anos <- seq(1975, 2020, by = 5)

### Rasters de volume das construções ###
# Caminho base para os arquivos de volume
caminho_base_volume <- "/Users/lucas/Desktop/Lucas/Doutorado/Tese/Dados/GHSL/Volume/"

# Função para carregar os arquivos raster de volume
carregar_raster_volume <- function(ano) {
  caminho <- paste0(caminho_base_volume, "GHS_BUILT_V_E", ano, "_GLOBE_R2023A_54009_100_V1_0/GHS_BUILT_V_E", ano, "_GLOBE_R2023A_54009_100_V1_0.tif")
  raster(caminho)
}

# Carregar todos os rasters de volume em uma lista
volumes <- lapply(anos, carregar_raster_volume)

# Nomear os elementos da lista com os respectivos anos
names(volumes) <- paste0("vol_", anos)


### Rasters da população ###
# Caminho base para os arquivos de população
caminho_base_populacao <- "/Users/lucas/Desktop/Lucas/Doutorado/Tese/Dados/GHSL/Population/"

# Função para carregar os arquivos raster de população
carregar_raster_populacao <- function(ano) {
  caminho <- paste0(caminho_base_populacao, "GHS_POP_E", ano, "_GLOBE_R2023A_54009_100_V1_0/GHS_POP_E", ano, "_GLOBE_R2023A_54009_100_V1_0.tif")
  raster(caminho)
}

# Carregar todos os rasters de população em uma lista
populacao <- lapply(anos, carregar_raster_populacao)

# Nomear os elementos da lista com os respectivos anos
names(populacao) <- paste0("pop_", anos)

