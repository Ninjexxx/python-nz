# 1. Defina a taxa
taxa = 3.16

# 2. Pergunte e GUARDE na variável (O input vem primeiro!)
# Note que a variável 'valor_texto' fica na ESQUERDA do igual.
valor_texto = input('Quanto é o valor em NZD para BRL? ')

# 3. Converta o texto para número
valor_numero = float(valor_texto)

# 4. Calcule (A variável 'resultado' que recebe o valor fica na ESQUERDA)
resultado = valor_numero * taxa

# 5. Mostre na tela
print(resultado)