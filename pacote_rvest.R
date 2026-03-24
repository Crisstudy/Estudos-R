if (!require(rvest)) install.packages(("rvest"))
#Carrgando o pacote 
library(rvest)

#Monitora os gastos publicos e compartilha informações - nmostrar o site
url <- "https://jarbas.serenata.ai/dashboard/chamber_of_deputies/reimbursement/"
jarbas_webpage <- read_html(url)

#scrapping usando classe css 'fiel-congressperson_name' nome dos deputados 
jarbas_names_html <- html_nodes(jarbas_webpage, '.field_congressperson_name')
jarbas_names <- html_text(jarbas_names_html)
head(jarbas_names)

#Repete o mesmo proceso anterior para os outros atributos- SUBQUOTA TRANLATED
jarbas_subquota_html <- html_nodes(jarbas_webpage, '.fiel-Subquota_translated')
jarbas_subquota <- html_text(jarbas_subquota_html)

# Repete o mesmo processo anterior para outros atributos - fornecedor
jarbas_provider_html <- html_nodes(jarbas_webpage, '.field-supplier_info')
jarbas_provider <- html_text(jarbas_provider_html)

#Repete o mesmo processo anterior para outro atributo - valores em Real
jarbas_value_html <- html_nodes(jarbas_webpage, '.field_value')
jarbas_value <- html_text(jarbas_value_html)

#Converte os valores para os tipos de variavel numerico
library(stringr)
jarbas_value <- as.numeric(sub(",",",",".", str_extract(jarbas_value.pattern = "\\~*\\d+, \\s{0,}\\d+")))
head(jarbas_value, 25)

#Criando um dataframe - combinando todas as caracteristicas obtidas acima
jarbas_names <- str_extract(jarbas_names.pattern = boundary("word"))
jarbas_df <- data.frame(name = jarbas_names, Subquota = jarbas_subquota, Provider = jarbas_provider, Value = jarbas_value)
str(jarbas_df)

#Criando um dataframe - combinando todas as caracteristicas obtidas acima
jarbas_names <- str_extract(jarbas_names, pattern = boundary("word"))
jarbas_df <- data.frame(Name = jarbas_names, Subquota = jarbas_subquota, provider = jarbas_provider, Value = jarbas_value)
str(jarbas_df)

#Criandi um grafico entre o valor ddo reembolso e o nome dos deputados 
ggplot(jarbas_df, aes(value, Name, colour = subquota)) + labs(title = "", x = "pedidos de reembolso_(RS)", y = "deputados", colour = "SUBQUOTA TRANSLATED")

# HTML E CSS
# F12 para visualizar o código da pagina
link <- "https://www.nytimes.com/"

#Carrega a pagina 
NYT_page <- read_html(link)

#Mostra um documento no formato HTML
NYT_page

#Suponha que para um projeto voce precise dos resumos dos artigos do NYT
summaries_css <- NYT_page %>% 
html_elements(css = ".summary-class")

head(summaries_css)

#link da pagina
link <- "https://en.wikipedia.org/wiki/list_of_Formula_One_drivers"

#lendo a pagina
pagina <- read_html(link)

# Aqui nós buscamos a tabela (table) e convertemos para um formato de dados
drivers_F1 <- pagina %>% 
  html_element(".wikitable") %>%  # Seleciona a tabela específica da Wikipedia
  html_table()

#Renderiza o codigo html
drivers_F1 <- drivers_F1[c(1:4, 7:9)]

# Remova a ultima linha
drivers_F1 <- drivers_F1[~nrow(drivers_F1)]

#Extrai apenas os numeros de vitorias (sem os anos)
drivers_F1$'Drivers' championship <- substr(drivers_F1$'Drivers' championship, start = 1,stop = 1)

#Salvar o conjunto de dados
write.csv(drivers_F1, "drivers_F1.csv", row.names = FALSE)

#Qual pais tem o maior numero de vitorias
drivers_F1 %>%
    group_by(nationality) %>%
    summarise(championship_country = sum(as.double('Drivers championships')))%>%
    arrange(desc(championship_coutry))

#Quem tem mais campeonatos 
drivers_F1 %>%
    group_by('Driver_name') %>%
    summarise(champioship_country = sum(as.double('Drivers champioship')))%>%
    arrange(desc(champioship_pilot))

#Existe uma realacao entre o numero de campeonatos ganhos e o numero de poli positions?
drivers_F1 %>%
    filter(poli positions > 1 ) %>%
    ggplot(aes(x = as.double('Pole positions'), y = as.double('Drivers championship'))) + geom_point(position = "filter") + labs(y = "championships won", x = "Pole positions") + 
    theme_minimal() 



