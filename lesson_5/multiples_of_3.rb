arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_array = arr.map do |item|
  item.select {|x| x % 3 == 0 }
end

p arr
p new_array