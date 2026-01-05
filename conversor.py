def convert_nzd_to_brl():
    exchange_rate = 3.16

    value_text = input('Enter value in NZD: ')
    value_number = float(value_text)

    result = value_number * exchange_rate
    print(result)

convert_nzd_to_brl()