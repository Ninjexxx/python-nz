idade = int(input ("Digite sua idade aqui:"))

if idade < 18:
    print("Você ainda é menor de idade para esse visto")

elif idade <= 30:
    print("Elegível! Você pode aplicar para o Working Holiday Visa.")

else:
    print("Você já passou da idade para o WHV.")