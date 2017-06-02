arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_array = arr.map do |item|
  new_array = {}
  item.each do |key,value|
    new_array[key] = value + 1    
  end
  new_array
end

p arr
p new_array