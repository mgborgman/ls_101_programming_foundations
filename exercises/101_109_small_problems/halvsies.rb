def halvsies (list)
  length = list.length
  first_list_right_index = (length / 2.0).ceil
  second_list_right_index = length - 1
  count1 = 0
  count2 = first_list_right_index
  list1 = []
  list2 = []
  result = []
  while count1 < first_list_right_index
    list1 << list[count1]
    count1 += 1
  end
  while count2 <= second_list_right_index
    list2 << list[count2]
    count2 +=1
  end
  result << list1 << list2
end



p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]