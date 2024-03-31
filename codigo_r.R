
library(dplyr)
library(ggplot2)

dados <- read.csv("./BD_Atlas_1991_2022 - Atlas - Valores Corrigidos.csv")

# 1) Qual tipo de desastre causou o maior número de mortes?

resultado1 <- dados %>%
  group_by(descricao_tipologia) %>%
  summarise(soma_valor = sum(obitos))

ggplot(resultado1, aes(x = soma_valor, y = descricao_tipologia)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  labs(title = "Soma dos óbitos por tipologia do desastre",
       x = "Soma dos Óbitos",
       y = "Tipologia")

# Resposta: Enxurradas


# 2) Qual tipo de desastre causou o maior valor total de prejuízos financeiros?

resultado2 <- dados %>%
  group_by(descricao_tipologia) %>%
  summarise(soma_valor = sum(prejuizos_totais))

ggplot(resultado2, aes(x = soma_valor, y = descricao_tipologia)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  labs(title = "Soma dos prejuízos totais por tipologia do desastre",
       x = "Soma dos Prejuízos",
       y = "Tipologia")

# Resposta: Estiagem e seca

