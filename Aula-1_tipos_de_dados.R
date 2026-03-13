# Declarando variáveis (Simbolos de atríbuição)
# caracter
var1 <- "Ola mundo"
typeof(var1)
assign("var2", "Sejam bem vindos")
typeof(var2)
class(var2)

# numeric
# double
var1 <- 1
var2 = 2
assign("var3", 3)
typeof(var1)
typeof(var2)
typeof(var3)
# inteiro

x = 2L
typeof(x)
as.integer(2)
typeof(x)

# double ponto flutuante
y <- 2.4
typeof(y)
y <- as.double(2.4)
typeof(y)

# complex 
z <- 3+4i
typeof(z)
z <- as.complex(3+4i)
typeof(z)

# logical
var1 = TRUE
var2 = T
typeof(var1)
typeof(var2)

# Operadores de comparção 
var1 <- 1
var2 <- 2

# Retorna TRUE/FALSE - Logical
result1 <- var1 == var2 # igual a 
typeof(result1)
print(result1)
result2 <- var1 != var2 # diferente que
print(result2)

result3 <- var1 > var2 # Maior que
print(result3)

result4 <- var1 < var2 # menor que
print(result4)

result5 <- var1 >= var2 # maior ou igual
print(result5)

result6 <- var1 <= var2 # menor ou igual 
print(result6)

# Operadores logicos 
# not !
res <- !TRUE
typeof(res)
print(res)

res2 <- !(6 != 6)
print(res2)

# or |
5>3 | 10>8
5>3 | 10>11

# operador and &
5>3 & 10>8
5>3 & 10>11

# operador and &&
5>3 & 10>8 # analisa as duas condições
5>3 && 10>11 # analise a condicao 1 TRUE  e depois a condicao 2

# Operadores matematicos
# adição
1 + 1 

#subtração
4 - 2

# multiplicação
2 * 3

# divisão
5 / 3

# potencia
4 ^ 2

# resto da divisão 
5 %% 3

# parte inteira da divisão 
5 %/% 3

# expoente 
4 ** 2
