def double_odd_indicies!(numbers)
  counter = 0

  loop do
    break if counter == numbers.length
    numbers[counter] *= 2 if counter.odd?
    counter += 1
  end
  numbers
end

p double_odd_indicies!([1, 2, 3, 4, 5])