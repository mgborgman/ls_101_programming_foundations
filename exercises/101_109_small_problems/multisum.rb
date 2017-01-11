def multisum(num)
  result = 0
  range = (1..num).to_a
  range.each do |number|
    if number % 5 == 0 || number % 3 == 0
      result += number
    end
  end
  result
end

puts multisum(20)