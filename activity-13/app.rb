positive = 1
negative = 0
arr = []

[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15].each do |num|
    positive += 1 if num >= 0
    negative += num if num <= 0
end
arr.push(positive)
arr.push(negative)

p arr