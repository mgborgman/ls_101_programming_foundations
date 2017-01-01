def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator_input = ''
denominator_input = ''

loop do
  puts '>> Please enter the numerator: '
  numerator_input = gets.chomp
  if !valid_number?(numerator_input)
     puts '>> Invalid input. Only integers are allowed.'
     next
  end
  break
end

loop do
  puts '>> Please enter the denominator: '
  denominator_input = gets.chomp
  if !valid_number?(denominator_input)
    puts '>> Invalid input. Only integers are allowed.'
    next
  elsif denominator_input == '0'
    puts '>> Invalid input. A denominator of 0 is not allowed.'
    next
  end
  break
end

puts ">> #{numerator_input} / #{denominator_input} is #{numerator_input.to_i / denominator_input.to_i}"