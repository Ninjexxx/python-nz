my_skills = ["Python", "Robot Framework", "ServiceNow", "Git", "Manual Testing"]

job_requirements = ["Python", "Playwright", "Git", "Robot Framework", "Agile", "ServiceNow"]

matches = 0

print("--- Analyzing Job Requirements ---")

for skill in job_requirements:
    if skill in my_skills:
        print(f"[MATCH] Requirement met: {skill}")
        matches += 1
    else:
        print(f"[MISSING] Skill to develop: {skill}")

total_reqs = len(job_requirements)
match_rate = (matches / total_reqs) * 100

print(f"\nSummary: {matches} out of {total_reqs} skills matched.")
print(f"Match Rate: {match_rate:.2f}%")

if match_rate >= 80:
    print("Result: High probability! Time to apply and network.")
else:
    print("Result: Keep studying. Focus on the 'Missing' items above.")