def century(year)
    # Your solution goes here, warrior
    ans = 0.0
    ans = year.to_f / 100
    dec = ans.to_s.split('.')

    ans = ans.to_i + 1 if dec[1] != '0'
    ans
end