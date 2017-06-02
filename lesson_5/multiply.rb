def multiply!(numbers, factor)
  counter = 0
  loop do
    break if counter == numbers.length
    numbers[counter] = numbers[counter] * factor
    counter += 1
  end
  numbers
end

p multiply!([1, 2, 3, 4, 5], 3)