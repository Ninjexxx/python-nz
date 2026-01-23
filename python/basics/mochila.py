itens_mochila = []

item1 = input("Primeiro item para a NZ: ")
itens_mochila.append(item1)

item2 = input("Segundo item para a NZ: ")
itens_mochila.append(item2)

itens_mochila.sort()
print(itens_mochila)

print("--- Itens na minha mala organizados ---")
for item in itens_mochila:
    print(f"Bagagem confirmada: {item}")