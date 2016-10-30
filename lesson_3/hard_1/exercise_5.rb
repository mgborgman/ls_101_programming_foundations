
def is_an_ip_number?(number)
  valid_numbers = (0..255).to_a
  valid_numbers.map! do |number|
    number.to_s
  end
  if valid_numbers.include?(number)
    true
  else
    false
  end
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end
      
puts dot_separated_ip_address?('127.0.0.1')
puts dot_separated_ip_address?('55.260.39.12')
puts dot_separated_ip_address?('123.234.34')