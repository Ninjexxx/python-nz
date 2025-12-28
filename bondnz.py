aluguel = float (input("Qual é o valor do aluguel na semana?"))

calculo = aluguel * 6

limite = 2150

if calculo <= limite:
    print(f"Parabéns, valor ${calculo} no total está acessível! Faça uma visita.")
else:
    diferenca = calculo - limite
    print(f"Atenção! Esse valor ultrapassa seu limite em ${diferenca}.")