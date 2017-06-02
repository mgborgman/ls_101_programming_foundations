def merge(list1, list2)
  result = list1 + list2
  result.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]