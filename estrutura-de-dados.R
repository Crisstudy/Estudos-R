numeros <- c(2, 5, 6, 78, 2, 233) # A função c concatena os números 
is.vector(numeros) # confere se o objeto é um vetor 
class(numeros) # confere aclasse, só pode haver uma classe para todo vetor
length(numeros) # Mostra o comprimento do vetor

names(numeros) # não há nomes 
names(numeros) <- c("n1", "n2", "n3", "n4", "n5", "n6")
names(numeros) # Os nomes do vetor

letras <- c("a", "b", "c", "d", "e", "f") # Classes character
letras
class(letras)

logico <- c(F, T) # Classe logical
logico
class(logico)

# Indexação de vetores
numeros[2] #Seleciona o segundo valor do vetor
numeros[1:3] # Seleciona os primeiros tres valores do vetor
numeros[1] <- 12 # muda o valor do item 1 vetor numeros
numeros

# Matriz

matriz <- matrix(c(1, 2, 3, 11, 12, 13), nrow = 3, ncol = 2) # Matriz, 3x2
matriz

str(matriz) # Resumo da matriz
head(matriz, n = 1) # mostre a primeira linha 
tail(matriz, n = 1) # mostre a ultima linha
dim(matriz) # Dimensoes da matriz, primeiro linhas e depois colunas 
nrow(matriz) # Numero de linhas
ncol(matriz)

rownames(matriz) # nome das linhas, nesse caso NULL
colnames(matriz) # NOME DAS COLUNAS, NESSE CASO NULL

# cria os vetores de numeros e letras
numeros <- c(2, 5, 6, 78, 2, 233) # A função c concatena os numeros 
letras <- c("a", "b", "c", "d", "e", "f") #  classe por character
matriz.por.colunas <- cbind(numeros, letras) # concatenacao por colunas
matriz.por.linha <- rbind(numeros, letras) # concatenacao por linhas

# Indexacao de matriz
matriz[1,1] # valorda linha 1 e coluna 1 
matriz[1, 1, drop = FALSE] # valor da linha 1 e coluna 1, mantendo a estrutura da matriz

numeros <- c(2, 5, 6, 78, 2 , 233)
letras <- c("a", "b", "c", "d", "e", "f")
y <- F
dados <- data.frame(valores = numeros, letras, categorias = y)
print(dados[2,1])

#ESTRUTURAS CONDICIONAIS

x <- 10
if (x == 10) {
    res <- "numero é igual a 10"
    print(res)
} 

y <- 20
if (y == 20) {
    res <- "numero é igual a 20"
} else {
    res <- "numero diferente de 20"
}
print(res)

z <- 30
res <- if (z == 30) "Igual" else "Diferente"
print(res)

x <- 30
if (x == 30) {
    res <- "numero igual a 30"
} else if (x > 30) {
    res <- "numero maior que 30"
} else { 
    res <- "numero menor que 30"
}
print(res)

# FOR
for (i in 1:10) {
    print (i)
}

x <- c(1,2,4,5,7,9,11)
for (i in x) {
    print(i)
}

for (i in x) {
    x2 <- i^2
    print(x2)
}

soma <- 0 
for (i in 1:8) {
    soma <- + 1 
    if (soma > 5) break
    print(i)
}

for (i in c(-50, 4, 2.2, pi)) print(i)

# WHILE
soma <- 0
i <- 10 
while(i <= 100) {
    soma <- soma + i
    i <- i + 5
}
print(soma)

somas_parciais <- NULL
soma <- 0
i <- 10
while (i <= 100) {
    soma <- soma + i 
    somas_parciais <- c(somas_parciais,soma)
    i <- i + 5
} 
somas_parciais

x <- 1
while(x <= 10 ){
    print(x)
    x <- x + 1
}

# REPEAT

i <- 1
soma <- 0
 repeat {
    if (i <= 10) {
        soma <- soma + i
        i <- i + 1
    } else {
        break()
    }
 }
 print(soma)

minha.var <- -10
repeat {
    minha.var <- minha.var + 1
    if (minha.var > 100){
        break()
    }
}
minha.var

y = 1
i = 1
repeat {
    i = i + 1 
    y[i] = i
    if (i == 100)
    break
}
y

x <- c(1, 2, 4, 5, 7, 9, 11)


for (i in x) {


  x2 <- i+2


}
print(x2)
i <- 1
soma <- 0
repeat{
  if (i <= 10) {
    soma <- soma + i
    i <- i + 1
  } else {
    break
  }
}
print(soma)
