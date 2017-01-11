puts "Enter the 1st number: "
first_number = gets.chomp.to_i

puts "Enter the 2nd number: "
second_number = gets.chomp.to_i

puts "Enter the 3rd number: "
third_number = gets.chomp.to_i

puts "Enter the 4th number: "
fourth_number = gets.chomp.to_i

puts "Enter the 5th number: "
fifth_number = gets.chomp.to_i

puts "Enter the 6th number: "
sixth_number = gets.chomp.to_i

numbers = [first_number, second_number, third_number, fourth_number, fifth_number]

puts numbers.include?(sixth_number) ? "The number #{sixth_number} appears in #{numbers}." : "The number #{sixth_number} does not appear in #{numbers}."
