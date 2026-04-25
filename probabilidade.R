U1 = runif(100, 0.1)
U2 = runif(1000. 0.1) # nolint: error.
U3 = runif(10000, 0.1)
U4 = runif(1000000, 0.1)

par(mfrow = c(2,2))
hist(U1, main= "Tamanho da amostra 100")
hist(U2, main= "Tamanho da amostra 1000")
hist(U3, main= "Tamanho da amostra 10000")

t <- seq(-4, 4, length = 200)
td <- dt(t, df = 2)

plot(t, td, type = "1", lwd = 2, col = "red", main = "T- student", ylab = "densidade", ylim = c(0,0.5))
lines(t, dt(t, df = 5), col = "blue")
lines(t, dt(t, df = 10), col = "green")
lines(t, dt(t, df = 20), col = "pink")
lines(t, dt(t, df = 30), col = "black")
line(t, dnorm(t, mean = 0, sd = 1), lty = 3 lwd = 4)
legend("topright", legend = c("def = 2", "def = 5", "def = 10", "def = 20", "def = 30", "normal standard") col = 1:5)

#DISTRIBUIÇÃO DE CHI-QUADRADO



x_dchisq <- seq(0, 20, by = 0.1)
y_dchisq <- dchisq(x_dchisq, df = 5)
plot(y_dchisq)

x_pchisq <- seq(0,20, by = 0.1)
y_pchisq <- pchisq(x_dchisq, df = 5)
plot(y_pchisq)

x_qchisq <- seq(0,20, by = 0.1)
y_qchisq <- qchisq(x_qchisq, df = 5)
plot(y_qchisq)

x <- rchisq(50000, def = 5)

hist(x, 
    freq = FALSE
    xlim = C(0.16))
    ylim = c(0,0.2)

curve(dchisq(x, df = 5), from = 0, to = 15, n = 5000, col = "red", lwd
= 2, add = T)

#REGRESSÃO LINEAR SIMPLES

if (!require(dplyr)) install.packages(("dplyr"))


library(dplyr)

notas_matematica <- c(5, 8, 7, 10, 6, 7, 9, 3, 8, 2)
notas_estatistica <- c(6, 9, 8, 10, 5, 7, 8, 4, 6, 2)
dados <- data.frame(notas_matematica, notas_estatistica)
View(dados)
glimpse(dados)

plot(notas_matematica - notas_estatistica, pch - 16, data=dados)

modelo.regressao <- lm(notas_matematica ~ notas_estatistica, data = dados)

abline(modelo.regressao, col = "red")
peso <- c(45, 50, 60, 55, 58, 56, 48, 53)
altura <- c(1.54, 1.56, 1,65, 1.60, 1.65, 1.63, 1.58, 1.59)

dados <- data.frame(peso, altura)
View(dados)
glimpse(dados)

plot(peso - altura, pch = 16, data = dados)

modelo.regressao <- lm(peso~altura, data = dados)

par(mfrow = c(2.2))
plot(modelo, regressao)

#construir grafico de regressao linear simples

#carregar os pacotes que serao usados 
if(!require(pacman))install.packages("pacman")
library(pacman)

pacman :: p_load(dplyr, ggplot2, car, rstatix, lmtest, ggpmisc)

dados <- read.csv2("Banco de dados 11.csv")
View(dados)
glimpse(dados)

plot(dados$Publicidade, dados$Vendas)

mod <- lm(Vendas~Publicidade, dados)

par(mfrow = c(1,1))
ggplot(data = dados, mapping = aes(x = publicidade, y = vendas)) + 
geom_point() + 
geom_smath(method = "lm", col = "red") +
stat_poly_eq(aes(label = paste(..eq.label..,.. adj.rr.label.., sep = "plain(\,"\")~ ~")), label.x = 0.05, label.y = 400, parse = TRUE, coef.digts = 5) 

theme_classic()

#Interpretar resultado de regressão linear simples
# 1. Instalar o BiocManager se não tiver (ajuda com dependências)
if(!require(BiocManager)) install.packages("BiocManager")

if(!require(pacman)) install.packages

#Carregar o banco de dados 
dados <- read.csv2("banco de dados.csv")
View(dados)
glimpse(dados)

#Relação linear entre a VD e a VI:
plot(dados$Publicidade, dados$vendas)
#Construção do modelo:
mod <- lm(vendas ~ publicidade, dados)

#Analise grafico
par(mfrow = c(2,2))
plot(mod)

##Normalidade dos residuos:
shapiro.test(mod$residuals)
#Outliers nos residuos:
Summary(rstandard(mod))
##Independencia dos residuos (Durbin-Watson):
durbinWatson(mod)
##Homocedasticidade(Breusch-Pagan):
bptest(mod)
#Passo 4: Analise do modelo
summary(mod)

# regressão Linear mútipla
if(! require(pacman)) install.packages("pacman")
library(pacman)

pacman :: p_load(dplyr, car, rstatix, lmtest, ggpubr, QuantPsyc, psych, scatterplot3d)





