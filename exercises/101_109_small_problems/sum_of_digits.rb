def sum(num)
  total = 0
  string_num = num.to_s
  array_num = string_num.split('')
  array_num.each do |item|
    total += item.to_i
  end
  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45