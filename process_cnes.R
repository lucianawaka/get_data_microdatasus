install.packages("remotes")
remotes::install_github("rfsaldanha/microdatasus")
library(microdatasus)

# CNES
# LT

# Ler dados CNES-LT de Goiás ano 2005 a 2023 todos os meses
data_LT <- fetch_datasus(year_start = 2005,
                      year_end = 2023,
                      month_start = 1,
                      month_end = 12,
                      uf = "GO",
                      information_system = "CNES-LT")

# Exporta os dados para .csv sem index
write.csv2(data_LT, 'cnes_LT.csv', row.names = FALSE)