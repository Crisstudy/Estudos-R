if (!require(tidyverse)) install.packages(("tidyverse"))
library(tidyverse)

#Viaualizando os dados do dataframe mtcars e transformando de tiblle
head(mtcars)
as_tibble((mtcars))

#Criando um tiblle com a função tiblle()
tibble1 <- tibble(a = 1: 5, b = 10, c = a * 2 + b)
print(tibble1)

#Criando um conjunto de dados desorganizados - cidades mais populosoas Espirito Santo
dados_cidades <- tibble(~UF, ~Serra, ~VilaVelha, ~Cariacica, ~Vitoria, ~CachoeiradeItamerim, ~Linhares, "Es", 5272, 501325, 365855, 210589, 176688,365855)
dados_cidades

#A fução pivot_longer() organiza as colunas de cidade em apenas 1 coluna 
dados_longer <- dados_cidades %>% pivot_longer(cols = Serra:Linhares, names_to = "cidades",values_to = "População")
dados_longer

# A função pivot_wider retorna o formato 
dados_wider <- dados_longer %>% pivot_wider(names_from = "Cidades", values_from = "População")
dados_wider
