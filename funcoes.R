# lista de pacotes encontra-se disponível no CRAN (comprehensive R archive Network)
# Numero atual de pacotes no CRAN
nrow (available.packages())

# verificar pacotes carregados
search()

##verificar pacotes instalados 
library()

## Instalando o pacote
if (!require(vegan)) install.packages(("vegan"))

## Carregando o pacote
library("vegan")

## Diretórios de instalação dos pacotes
.libPaths()

require(vegan) ## ... também carrega o pacote.

## Descrição de um pacote 
packageDescription ("vegan")

## Desinstalar um pacote 
remove.packages("vegan")

## Descarregar um pacote 
detach("package:vegan", unload = TRUE)

## Atualização dos pacotes
update.packages(checkBuilt = TRUE, ask = FALSE)

ola.mundo <- function() {
    writeLines("Olá mundo")
}
ola.mundo()

ola.mundo <- function(texto) {
    writeLines(texto)
}
ola.mundo(("Seja bem vindo"))

maior<- function(a, b) {
    if (a>b)
        return (a)
    else 
        return (b)
}
maior (5, 6)

maior_de_3 <- function (a, b, c) {
    if (a>b && a>c) {
        return(a)
    } else {
    if(b>c)
        return(b)
    else 
        return(c)
     } 
}
maior_de_3(4, 5, 6)

trunc(x = -10.723456)

round (-10.723456, digits=4)

signif(-10.723456, digits = 1)

signif(-10.723456, digits = 2)

signif(-10.723456, digits = 3)

ceiling(-10.723456)

ceiling(10.723456)

floor(-10.723456)
floor(10.723456)

frase <- "Eu sempre fui magro, mas hoje"
substr(x = frase, start = 15, stop = 19)
verbo <- substr(x = frase, start = 11, stop = 13)
verbo
strsplit(x = frase, split = " ")
paste("primeiro", "segundo", "terceiro", sep = ",")
toupper(x = frase)
tolower(x = frase)
nchar(x = frase)
grep(pattern = "fui", x = frase)
grepl(pattern = "fui2", x = frase)
sub(pattern = "magro", replacement = "gordo", x = frase)

