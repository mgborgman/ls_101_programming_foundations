def interleave(list1, list2)
  index = 0
  result = []
  while index < list1.length
    result << list1[index] << list2[index]
    index += 1
  end
  result
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


def interleave_with_zip(list1, list2)
  result = list1.zip(list2)
  result.flatten
end

p interleave_with_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']