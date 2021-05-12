def century(year)
    # Your solution goes here, warrior
    case year
    when (2001..2100)
        21
    when (1901..2000)
        20
    when (1801..1900)
        19
    when (1701..1800)
        18
    when (1601..1700)
        17
    when (1501..1600)
        16
    when (1..1599)
        1
    end
end