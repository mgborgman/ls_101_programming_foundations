def convert_to_binary(num)
  result = ''
  half = num / 2
  half.times do
    result << '10'
  end
  result
end


def stringy(num)
  result = ''
  if num.odd?
    result = convert_to_binary(num)
    result << '1'
    result
  else
    foo = num / 2
    result = convert_to_binary(num)
    result
  end
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'