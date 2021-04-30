num = 4
is_perfect_square = false

(num + 1).times do |x|
    if x * x == num
        is_perfect_square = true
    end
end

print is_perfect_square