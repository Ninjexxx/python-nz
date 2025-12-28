meus_conhecimentos = ["Python", "Robot Framework", "ServiceNow", "Git"]

requisitos_vaga = ["Python", "Playwright", "Git", "Robot Framework", "Agile"]

matches = 0

print("--- Analisando Requisitos da Vaga ---")

for item in requisitos_vaga:
    if item in meus_conhecimentos:
        print(f"[CHECK] Tu já sabes: {item}")
        matches += 1
    else:
        print(f"[FALTA] Requisito pendente: {item}")

total_requisitos = len(requisitos_vaga)
aproveitamento = (matches / total_requisitos) * 100

print(f"\nResultado: Tu atendes a {matches} de {total_requisitos} requisitos.")
print(f"Teu 'Match' com esta vaga é de {aproveitamento}%")

if aproveitamento >= 70:
    print("Conclusão: Tens grandes chances! Aplica para a vaga e foca no networking.")
else:
    print("Conclusão: Continua os estudos. Foca nos itens 'pendentes' acima.")