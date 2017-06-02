def sum_of_sums(list)
  running_total = 0
  temp = []
  index = 0
  while index < list.length
    temp << list[0..index]
    index += 1
  end
  temp.flatten.each do |num|
    running_total += num
  end
  running_total
end


p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35