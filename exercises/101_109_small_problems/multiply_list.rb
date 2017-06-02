def multiply_list(list1, list2)
  result = []
  list1.each_with_index do |element, index|
    result << element * list2[index]
  end
  result
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


def multiply_list2(list1, list2)
  list1.zip(list2).map {|a, b| a * b}
end

p multiply_list2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]