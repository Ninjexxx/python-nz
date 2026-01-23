def convert_nzd_amount_to_brl():
    exchange_rate = 3.16

    value_text = input('Enter value in NZD: ')
    nzd_amount = float(value_text)

    brl_amount = nzd_amount * exchange_rate
    print(brl_amount)

convert_nzd_amount_to_brl()