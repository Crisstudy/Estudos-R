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

print(dados_cidades)

# A função separate() separa uma coluna em várias 
dados <- tibble(Nome = c("João", "Pedro", "Amanda", "Fabiana", "Maria", "Gustavo"), 
                Altura = c(1.80, 1.77, 1.71, 1.75, 1.66, 1.63), 
                Nascimento = c("22-03-2998", NA, "18-02-1999", "20-09-1999", "23-01-1999", "19-09-2004"),
                Sexo = c("masculino", "masculino", "feminino", "masculino", "feminino", "masculino"),
                Peso = c(78.3, 82.1, NA, 88.1, 58.0, 75.4),
                Fumante = c(TRUE, FALSE, FALSE, FALSE, NA, FALSE),
                UF = C("PB", "AL", "PE", "PE", "SP", "CE"),)
dados_separate <- dados %>% separate(Nascimento, into = c("Dia", "Mes", "Ano"), sep = "-")
dados_separate
# Oposto do separate () é o unit()
dados_unit <- dados_separate %>% unit(Nascimento, Dia, mes, ano, sep= "/")
dados_unit
# A função drop_na() exclui dados faltantes
dados %>% drop_na(Nascimento, Peso, Fumante)

print(dados_cidades)

# Datas são criadas com o tipo character
data_string <- "2015-10-21"
class(data_string)
#Convertendo string para data função date()
data_date <- date(data_string)
class(data_date)
data_date

#função dmy() cria data com um formato especifico - ERRO
data_string <- "21-10-2015"
data_mdy <- dmy(data_string)
class(data_mdy)
data_mdy

#Função ymd_hms classe date
bday <- ymd_hms("1989-07-29 030142")
bday
second(bday)
day(bday)
month(bday)
year(bday)
wday(bday)

#Função de categoria usando a função as.factor()
sexo <- c("masculino", "feminino", "feminino", "masculino", "feminino", "masculino")
fator_sexo <- as.factor(sexo)
fator_sexo

#Conjunto de dados
head(gss_cat)

#Visualização da categoria marital
head(gss_cat$marital)

#After as categoria com as funções fct_recode()
estado_civil <- fct_recode(gss_cat$marital, solteiro = "Never married", 
                            separado = "separated", Divorciado = "Divorced",
                            viuvo = "Widowed", casado = "Married")
head(estado_civil)

# Junta manualmente as categorias com a função fct_colapse()
estado_civil2 <- fct_collapse(gss_cat $marital, solteiro = (c("Never Married", "Divorced", "Widowed", "Separated")), casado = ("Married"))
head(estado_civil2)

#Reordenar a ordem com a função fct_reordenar()
relig <- gss_cat %>% group_by(relig) %>% sumarize(vhours = mean(tvhours, na.rm = TRUE), n = n())
ggplot(relig, aes(tvhours, fct_reorder(relig, tvhours))) + geom_point()

#Agrupa as categorias menores com a função fct_lump() 
#Conta a quantidade de observações em cada categoria em ordem decrescente
gss_cat %>% count(relig, sort = TRUE) # nolint

#Reordena em 5 categorias
gss_cat %>% mutate(relig = fct_lump(relig, n = 5)) %>% count(relig, sort = TRUE) # nolint
