def multiply_list(list1, list2)
  result = []
  list1.each_with_index do |element, index|
    result << element * list2[index]
  end
  result
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]