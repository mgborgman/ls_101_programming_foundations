puts "Please enter an integer greater than 0: "
starting_value = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product. "
operation = gets.chomp

list_of_values = []
total = 0

while starting_value >= 1 do
  list_of_values << starting_value
  starting_value -= 1
end

if operation == 's'
  list_of_values.each do |num|
    total += num
  end
elsif operation == 'p'
  total = 1
  list_of_values.each do |num|
    total *= num
  end
end

puts total