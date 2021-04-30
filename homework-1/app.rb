# 1
num = 101
case num

when (0..50)
  puts "The number is between 0 to 50"
when (51..100)
  puts "The number is between 51 to 100"
else
  puts "The number is above 100"
end

# 2
num = 101
case num

when (0..50)
  puts "The number is between 0 to 50"
when (51..100)
  puts "The number is between 51 to 100"
else
  puts "The number is above 100"
end

# 3
command = ""
while command != "STOP" do 
    puts "Please say STOP"
    command = gets.chomp()
end

# 4
new_array = []
arr = [6, 3, 1, 8, 4, 2, 10, 65, 102].each do |num|
    new_array.push(num) if num % 2 == 0
end
print new_array