DIGITS = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6',
          7 => '7', 8 => '8', 9 => '9'}




def integer_to_string(number)
  result = ''
  numbers_list = []
  while number > 0
    numbers_list.unshift number % 10
    number = number / 10
  end
  if numbers_list == []
    result = '0'
  end
  numbers_list.each do |num|
    if DIGITS.has_key?(num)
      result << DIGITS[num]
    end
  end
  result
end

puts integer_to_string(4321) #== '4321'
puts integer_to_string(0) #== '0'
puts integer_to_string(5000) #== '5000'