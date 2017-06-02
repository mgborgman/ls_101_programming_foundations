def multiply_all_pairs(list1, list2)
  index_1 = 0
  index_2 = 0
  result = []
  while index_1 < list1.length
    while index_2 < list2.length
      result << list1[index_1] * list2[index_2]
      index_2 += 1
    end
  index_1 += 1
  index_2 = 0
  end
  result.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]