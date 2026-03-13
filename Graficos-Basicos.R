# GRÁFICOS BÁSICOS 
#Gráficos dispersão

#Construção dos vetores
riqueza <- c(15, 18, 22, 24, 25, 30, 31, 34, 37, 39, 41, 45, 50, 55)
area <- c(2, 4, 5, 6, 10, 30, 34, 50, 56, 60, 77, 5, 80, 85)

#Categorização da area
area.cate <- rep(c("pequeno", "grande"), each = 6)
#Acessando o help da função
?plot
#plotagem dos pontos no gráfico
plot(riqueza ~ area) # a função plot permite a construção de grafico
# Função plot recebe 2 vetores x e y

plot(area, riqueza) # o mesmo que o anterior

# Um dos vetores pode ser otimido. o R assume números inteiros no X
plot(area)
#colocando título no grafico
plot(area, riqueza,
main = "Gráfico riqueza por Area")
#Colorindo os pontos
plot(area, riqueza,
main = "Gráfico riqueza por area",
col = "forestgreen"
) # blue, red, purple

#mudando os caracteres do ponto
plot(area, riqueza,
main = "Gráfico Riqueza por Area",
col = blues9,
pch = "x"
)

# GRÁFICOS DE LINHA
#Construção dos vetores
riqueza <- c(15, 18, 22, 24, 25, 30, 31, 35, 37, 39, 41, 45, 50, 51)
area <- c(2, 4, 5, 6, 10, 30, 34, 50, 56, 60, 77, 5, 80, 85)

# Caracterizacao de area
area.cate <- rep(c("pequeno", "grande"), each = 6)

#Plotagem das linhas no gráfico
plot(riqueza ~ area,
    type = "l") #Função plot permite a construção de gráficos

# funçao plot recebe dois vetores X e Y
plot(area, riqueza,
    type = "l") # O mesmo que o anterior

# Um dos vetores pode ser otimido, O R assume numeros inteiros no X 
plot(area,
type = "l")

#Colocando título no gráfico 
plot(area, riqueza,
type = "l",
main = "Grafico riqueza por Area")

# Colorindo as linhas 
plot(area, riqueza,
type = "l",
main = "grafico Riqueza por Area",
col = "forestgreen") # blue, red, purple

# GRAFICO DE LINHA E PONTO

#Venda de sorvete em relaçao a temperatura
vendasSorvete <- data.frame(bolasSorvete = c(200, 300, 400, 500, 600),
temperatura = c(20, 25, 27, 30, 32))

# nome das colunas 
colnames(vendasSorvete) <- c("Qtd.sorvete", "Temperatura")

#Visualiza o data.frame
vendasSorvete

#cria gráficos de ponto
plot(vendasSorvete)

#cria gráficos de pontos
plot(x = vendasSorvete$Temperatura, # Eixo x com a temperatura
y = vendasSorvete$Qtd.sorvete) # Eixo y com  a quantidade de sorvetes

#Adciona linha entre pontos
lines(x = vendasSorvete$Temperatura,
y = vendasSorvete$Qtd.sorvete,
col = "red")

# vendas de sorvete que havia sido estimada 
estimativaSorvete <- c(150, 290, 370, 410, 503)

# Adciona linha entre os pontos
lines(x = vendasSorvete$Temperatura,
y = estimativaSorvete,
col = "blue")

# GRAFICO DE BARRAS
#instalando o pacote 
if (!require(ggplot2)) install.packages(("ggplot2"))

# carregando o pacote
library("ggplot2")

#Simulando um banco de dados 
df <- data.frame(tratamento = c("a", "b", "c"),
tamanho = c(1.3, 1.9, 3.2))

#Boxplot
ggplot(df, aes(y = tamanho, x = tratamento)) + geom_bar(stat = "identity")
# funcoes aes passa as coordenadas
#funcoes geom passa o tipo de grafico

# Grafico de barras c/ preenchimento colorido
ggplot(df, aes(y = tamanho, x = tratamento)) + geom_bar(stat = "identity", fill = "tomato")

#Grafico de barras com largura modificadas
ggplot(df, aes(y = tamanho, x = tratamento)) + geom_bar(stat = "identity", width = 0.25) +  ggtitle("width = 0.25")

# Grafico de barras com largura modificada 
ggplot(df, aes(y = tamanho, x = tratamento)) + geom_bar(stat = "identity") + coord_flip()
