vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(list)
  result = {}
  list.each do |item|
    if result.has_key?(item)
      result[item] += 1
    else
      result[item] = 1
    end
  end
  result.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)