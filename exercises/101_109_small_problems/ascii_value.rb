def ascii_value(str)
  result = 0
  str.chars.each do |letter|
    result += letter.ord
  end
  result
end

ascii_value("Launch School")