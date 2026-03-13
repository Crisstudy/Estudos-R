 # Teste de Performance Mac M1
print("O R está funcionando nativamente!")

# Criando dados fictícios
x <- seq(1, 10, by = 0.5)
y <- x^2

# Gerando um gráfico
plot(x, y, 
     main = "Teste de Gráfico no VS Code", 
     col = "blue", 
     pch = 19, 
     type = "b")

# Verificando se o chip M1 está sendo usado corretamente
sessionInfo()