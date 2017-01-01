def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def validate_input(user_input)
  if !valid_number?(user_input)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  else
    true
  end
end

def one_positive_one_negitive(num1, num2)
  if (num1.to_i > 0 && num2.to_i < 0) || (num1.to_i < 0 && num2.to_i > 0)
    true
  else
    false
  end
end

first_number_input = ''
second_number_input = ''
loop do 
  loop do
    puts '>> Please enter a positive or negative integer:'
    first_number_input = gets.chomp
    break if validate_input(first_number_input)
  end

  loop do
    puts '>> Please enter a positive or negative integer:'
    second_number_input = gets.chomp
    break if validate_input(second_number_input)
  end

  break if one_positive_one_negitive(first_number_input, second_number_input)

  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

puts ">> #{first_number_input} + #{second_number_input} = #{first_number_input.to_i + second_number_input.to_i}"