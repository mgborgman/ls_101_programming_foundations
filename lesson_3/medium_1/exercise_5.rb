def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

puts("Enter number: ")
user_input = gets.chomp
result = factors(user_input.to_i)
p(result)