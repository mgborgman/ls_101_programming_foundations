def include?(list, search_for)
  list.each do |element|
    return true if element == search_for
  end
  return false
end


p include?([1,2,3,4,5], 3) #== true
p include?([1,2,3,4,5], 6) #== false
p include?([], 3) #== false
p include?([nil], nil) #== true
p include?([], nil) #== false
