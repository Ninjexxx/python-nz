weekly_rent = float(input("What is the weekly rent amount (NZD)? "))

total_requirement = weekly_rent * 6

budget_limit = 2150 

print(f"--- Financial Summary ---")
print(f"Total move-in cost: ${total_requirement:.2f}")

if total_requirement <= budget_limit:
    print(f"Success! The amount of ${total_requirement:.2f} is within your budget.")
    print("You can proceed with the flat viewing.")
else:
    difference = total_requirement - budget_limit
    print(f"Warning! This total exceeds your safety limit by ${difference:.2f}.")
    print("Recommendation: Look for a room under $350/week to stay safe.")