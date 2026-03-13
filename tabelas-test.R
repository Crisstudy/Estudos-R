# Isntalando o pacote
if (!require(dplyr)) install.packages(("dplyr"))
#carregando o pacote
library("dplyr")
#Criação das tabelas de testes
marca <- c("fiat", "fiat", "fiat", "ford", "ford", "honda")
carro <- c("Argo", "Argo", "Cronos", "Fiesta", "Ecosport", "Civic")
ano <- c(2018, 2019, 2019, 2020, 2019,  2019)
preco <- c(44000, 48000, 56000, 52000, 75000, 99000)

tabela <- data.frame(marca, carro, ano, preco)
tabela
# Selecionando os carros da tabela
c <- select(tabela, carro) 
tabela
# Selecionando mais de uma coluna
select(tabela, carro, preco)
# Selecionando colunas consectutivas (preco)
select(tabela, carro:preco)
#Selecionando dados da tabela menos a coluna carro
select(tabela, ano, preco)

# FUNÇÃO ARRANGE()

#Ordenando a tabela pelo preço
arrange(tabela, preco)
#Ordenando pelo preço decrescente
arrange(tabela, desc(preco))
#Ordenando mais de uma coluna
arrange(tabela, carro, preco)
#Ordenando mais de uma coluna decrescente
arrange(tabela, carro, desc(preco))
#colocar em uma variavel
tb_ordenada <- arrange(tabela, carro, desc(preco))

# FUNÇÃO RENAME

#Renomeia o nome da coluna carro para veículo \
rename(tabela, veiculo = carro)
#Renomeia o nome de mais de uma coluna
rename(tabela,veiculo = carro, fabricacao = ano)
#Renomeia as colunas pelo indice
tabela <- rename(tabela, c1 = 1, c2 = 2, c3 = 3, c4 = 4)
tabela
#Renomeia todas colunas e converte para maiusculo
tabela <- rename_with(tabela, toupper)
tabela

# Operador pipe %>%

#Renomeia o nome carro para veiculo
rename(tabela, veiculo = C2)
tabela
tabela %>% rename(veiculo_pipe = C2)
#Renomear toda a tabela de uma vez
tabela <- tabela |> rename(
    marca = C1,
    carro = C2,
    ano = C3,
    preco = C4
)
tabela
#Seleciona carro e preco da tabela e depois ordena de forma decrescente
tabela %>% select(carro, preco) %>% arrange(desc(preco))
#Seleciona carro e preco da tabela e depois ordena de forma descrescente
tabela |> 
    select(carro, preco)
    rename(veiculo = carro, valor = preco) %>% 
    arrange(desc(valor))

# PACOTE DPLYR - AVANCADO
#FUNÇÃO FILTER

# Istalando o pacote 
if (!require (dplyr)) install.packages(("dplyr")) # carregando o pacote
library("dplyr")

#Criação das tabelas de testes 
marca <- c("Fiat", "Fiat", "Fiat", "Ford", "Ford", "Honda")
carro <- c("argo", "argo", "cronos", "fiesta", "ecosport", "civic")
ano <- c(2018, 2019, 2019, 2020, 2019, 2019)
preco <- c(44000, 48000, 56000, 52000, 75000, 99000)

#Filtra os dados por uma condição 
filter(tabela, preco > 56000)
tabela %>% filter(preco > 56000)

#Filtra os dados onde o ano é igual a 2019
filter(tabela, ano == 2019)
tabela %>% filter(ano == 2019)

#Filtra mais de um valor para a mesma coluna usando % in %
filter(tabela, carro %in% c("civic", "fiesta"))
tabela %>% filter(carro %in% c("civic", "Fiesta"))

# FUNÇÃO MUTATE
# Criar nova coluna baseado nos dados existentes
mutate(tabela, novo_preco = preco * 1.10)
tabela |> mutate(novo_preco = preco * 1.10)

# Alterar o contudo da coluna preco10%
mutate(tabela, preco = preco * 1.10)

#modifica a tabela
tabelatabela <- mutate(tabela, novo_preco = preco * 1.10, aumento = novo_preco - preco)
tabela

#Excluir uma coluna e atribuir NULL
tabela <- mutate(tabela, aumento = NULL)
tabela

# FUNÇÃO SUMMARISE()
#Acha o preço médio dos carros 
summarise(tabela, mean(preco))
tabela %>% summarise(mean(preco))

#Acha a media do ano e preco dos carros
summarise(tabela, mean(ano), mean(preco))

#Acha o preco minimo e maximo dos carros 
tabela %>% summarise(min(preco), max(preco))

#Acha a primeira e ultima marca da tabela
tabela %>% summarise(first(marca), last(marca))

#Acha a quantidade de carros
tabela %>% summarise(n())

#Acha a quantidade de marcas distintas 
tabela %>% summarise(n_distinct(marca))

# FUNÇÃO GROUP_BY

# Agrupa as linhas por marca e calcula o preço medio da marca
tabela %>%
    filter(ano == 2019) %>%
    group_by(marca) %>%
    summarise(media = mean(preco)) %>%
    arrange(desc(media))

#Agrupa as linhas por marca e carro e calcula o preco da media da marca
tabela %>%
    group_by(marca, carro) %>%
    summarise(media = mean(preco)) %>%
    arrange(desc(marca))




