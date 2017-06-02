def reverse!(list)
  copy = []
  list.each do |element|
    copy << element
  end
  count = 0
  count_down = copy.length
  while count < list.length
    list[count] = copy[count_down -1]
    count += 1
    count_down -= 1
  end
  p list
end


list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!([]) # => []
p list == []

def reverse(list)
  result = []
  right_index = -1
  while right_index.abs <= list.length.abs
    result << list[right_index]
    right_index -= 1
  end
  result
end

p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
