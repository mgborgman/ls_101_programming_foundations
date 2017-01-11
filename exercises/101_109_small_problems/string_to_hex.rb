DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
           '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'a' => 10, 'b' => 11,
           'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15 }

def hexadecimal_to_integer(string)
  total = 0
  string.downcase!
  string.reverse!

  string.chars.each_with_index do |letter, index|
    if DIGITS.include?(letter)
      letter = DIGITS[letter]
      total += letter * (16 ** index)
    end
  end
  total
end

puts hexadecimal_to_integer('4D9f')# == 19871