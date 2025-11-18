# Estudo de Caso: Processamento de Imagens de Satélite com R

Este repositório documenta um estudo técnico prático desenvolvido como parte da minha candidatura à vaga de bolsista de Iniciação Tecnológica (ITI-A) para o projeto **"Sistema DEDICADO"** do INPE.

O objetivo deste projeto foi replicar o fluxo de trabalho de ingestão, manipulação e extração de dados geoespaciais utilizando a linguagem R, focando na automação de tarefas descritas no escopo da vaga.

## 🛠 Tecnologias e Bibliotecas
* **Linguagem:** R
* **Manipulação Vetorial:** pacote `sf` (Simple Features)
* **Manipulação Matricial (Raster):** pacote `terra`
* **Data Science:** `tidyverse` (`dplyr`)

## 🚀 Funcionalidades Implementadas
O script `analise_altamira.R` realiza o seguinte pipeline de processamento:

1.  **Ingestão de Dados:** Leitura automatizada de malhas municipais (Shapefiles) e imagens de satélite/raster (GeoTIFF).
2.  **Filtragem Espacial:** Seleção dinâmica de municípios de interesse (Caso de uso: **Altamira-PA**).
3.  **Harmonização de CRS:** Conversão e alinhamento de Sistemas de Coordenadas de Referência entre vetores e rasters (`st_transform`), garantindo precisão geométrica.
4.  **Recorte e Máscara (Crop & Mask):** Algoritmo para isolar a imagem de satélite utilizando a geometria exata do polígono municipal.
5.  **Visualização:** Geração de mapas temáticos para validação dos dados.

## 📊 Resultado Visual
Abaixo, o resultado do processamento: o recorte da imagem raster limitado pelas fronteiras oficiais de Altamira.

[Mapa de Altamira](resultado_altamira.tiff)

[Print do plot no R Studio](resultado_altamira.png)

## 📂 Reproducibilidade e Dados
Seguindo boas práticas de engenharia de software, os arquivos de dados brutos (que são volumosos) não foram versionados neste repositório. Para replicar este estudo, os dados públicos devem ser obtidos nas fontes oficiais abaixo:

1.  **Vetor (Municípios):** Malha Municipal do IBGE (Estado do Pará - 2024) - [Fonte Oficial IBGE](https://www.ibge.gov.br/geociencias/organizacao-do-territorio/malhas-territoriais/15774-malhas.html)
2.  **Raster (Base de Referência):** Natural Earth Data (50m Cross-blended Hypsometric Tints) - [Fonte Oficial Natural Earth](https://www.naturalearthdata.com/downloads/50m-raster-data/50m-natural-earth-1/)

## 👨‍💻 Sobre o Autor
Estudante de **Engenharia de Software** aplicando lógica de programação, automação e boas práticas de desenvolvimento no contexto de Geoprocessamento e Sensoriamento Remoto.
