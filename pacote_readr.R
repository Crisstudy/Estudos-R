#Instalação do pacote
if (!require(readr)) install.packages() (("readr"))
#carregando o pacote
library(readr)

#para nossos exemplos, utilizamos uma base de filmes de IMDB
#GRAVADA EM DIVERSOS FORMATOS
#Lê um arquivo separado por vírgula
imdb_csv <- read_csv(file = "dados/imdb.csv")
imdb_csv
#Lê um arquivo separado por ponto e vírgula
imdb_csv <- read.csv2(file = "dados/imdb.csv")
imdb_csv

# Criando um vetor com o conteúdo do texto
conteudo <- c("Meus estudos de R", "Data: 16/03/2026", "Aprender Git foi difícil mas consegui!", "O arquivo imdb.csv foi lido com sucesso.")

# Salvando o arquivo na pasta 'dados'
writeLines(conteudo, "dados/imdb.txt")

#Lê um arquivo.txt o\t - representa a tecla tab
imdb_txt <- read_delim("dados/imdb.txt", delim = "\t")
imdb_txt
#Mostra os tipos de coluna
spec(imdb_txt)
#função define opções de formatação
locale()
#Padrão português
locale(data_names = "pt")
#troca o separador decimal
locale(decimal_mark = ",")
