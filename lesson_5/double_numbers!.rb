def double_numbers!(numbers)
  counter = 0
  break if counter == numbers.length
  numbers[counter] = numbers[counter] * 2
  counter += 1
  numbers
end